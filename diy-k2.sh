#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# 应用过滤OpenAppFilter 【luci oaf app】
# 和加速模块（Turbo ACC)有冲突，需要关闭Turboo ACC后使用
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
