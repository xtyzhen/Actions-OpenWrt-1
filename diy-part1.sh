#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' feeds.conf.default
sed -i '$a src-git video https://github.com/openwrt/video.git' feeds.conf.default
sed -i '$a src-git targets https://github.com/openwrt/targets.git' feeds.conf.default
sed -i '$a src-git oldpackages http://git.openwrt.org/packages.git' feeds.conf.default
sed -i '$a src-link custom /usr/src/openwrt/custom-feed' feeds.conf.default
sudo apt update -y
sudo apt full-upgrade -y
sudo apt install -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential \
bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib \
git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libglib2.0-dev libgmp3-dev libltdl-dev \
libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libreadline-dev libssl-dev libtool lrzsz \
mkisofs msmtp nano ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 python3-pip qemu-utils \
rsync scons squashfs-tools subversion swig texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev
wget -P ./openwrt/dl https://mirrors.bfsu.edu.cn/raspberry-pi-os/raspbian/pool/main/b/bc/bc_1.06.95.orig.tar.gz
wget -O ./openwrt/dl/dns2tcp-0.5.2.tar.gz  https://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/pool/main/d/dns2tcp/dns2tcp_0.5.2.orig.tar.gz 

