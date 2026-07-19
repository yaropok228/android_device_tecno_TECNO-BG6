#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Наследование базовых конфигураций AOSP (64-бит и телефония)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Подключаем конфигурацию самого устройства из device.mk
$(call inherit-product, device/tecno/TECNO-BG6/device.mk)

PRODUCT_NAME := omni_TECNO_BG6
PRODUCT_DEVICE := TECNO_BG6
PRODUCT_BRAND := tecno
PRODUCT_MODEL := Tecno Spark Go 2024
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="BG6-user 13 TP1A.220624.014 602 release-keys"

BUILD_FINGERPRINT := TECNO/BG6-OP/TECNO-BG6:13/TP1A.220624.014/250722V2387:user/release-keys
