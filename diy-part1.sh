#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
sed -i '$a src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' ./feeds.conf.default

git clone --depth=1 https://github.com/immortalwrt/homeproxy.git package/homeproxy
git clone https://github.com/vernesong/OpenClash package/OpenClash
git clone https://github.com/xiaorouji/openwrt-passwall2 package/openwrt-passwall2
git clone https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall-packages

git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone https://github.com/BCYDTZ/luci-app-UUGameAcc package/luci-app-UUGameAcc
git clone https://github.com/Droid-MAX/luci-app-lingtigamebooster package/luci-app-lingtigamebooster
git clone https://github.com/lisaac/luci-app-diskman package/luci-app-diskman
git clone https://github.com/sirpdboy/luci-app-netdata package/luci-app-netdata
