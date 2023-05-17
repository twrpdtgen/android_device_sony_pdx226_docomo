#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pdx226_docomo device
$(call inherit-product, device/sony/pdx226_docomo/device.mk)

PRODUCT_DEVICE := pdx226_docomo
PRODUCT_NAME := omni_pdx226_docomo
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Pdx226_docomo
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pdx226_docomo-user 11 RKQ1.221010.001 1 test-keys"

BUILD_FINGERPRINT := Sony/pdx226_docomo/pdx226_docomo:11/RKQ1.221010.001/1:user/test-keys
