#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ hash_appended; } ;
struct TYPE_5__ {scalar_t__ image_len; TYPE_1__ image; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ esp_image_metadata_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_BLK0_RDATA0_REG ; 
 int /*<<< orphan*/  EFUSE_BLK0_RDATA6_REG ; 
 int /*<<< orphan*/  EFUSE_BLK2_RDATA0_REG ; 
 int /*<<< orphan*/  EFUSE_BLK2_RDATA1_REG ; 
 int /*<<< orphan*/  EFUSE_BLK2_RDATA2_REG ; 
 int /*<<< orphan*/  EFUSE_BLK2_RDATA3_REG ; 
 int /*<<< orphan*/  EFUSE_BLK2_RDATA4_REG ; 
 int /*<<< orphan*/  EFUSE_BLK2_RDATA5_REG ; 
 int /*<<< orphan*/  EFUSE_BLK2_RDATA6_REG ; 
 int /*<<< orphan*/  EFUSE_BLK2_RDATA7_REG ; 
 int /*<<< orphan*/  EFUSE_BLK2_WDATA0_REG ; 
 int /*<<< orphan*/  EFUSE_CODING_SCHEME ; 
 scalar_t__ EFUSE_CODING_SCHEME_VAL_34 ; 
 scalar_t__ EFUSE_CODING_SCHEME_VAL_NONE ; 
 scalar_t__ EFUSE_RD_DIS_BLK2 ; 
 scalar_t__ EFUSE_WR_DIS_BLK2 ; 
 scalar_t__ ESP_ERR_NOT_SUPPORTED ; 
 scalar_t__ ESP_FAIL ; 
 scalar_t__ ESP_IMAGE_HASH_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (scalar_t__) ; 

esp_err_t FUNC10(void)
{
    esp_err_t err;
    if (FUNC8()) {
        FUNC1(TAG, "bootloader secure boot is already enabled."
                      " No need to generate digest. continuing..");
        return ESP_OK;
    }

    uint32_t coding_scheme = FUNC3(EFUSE_BLK0_RDATA6_REG, EFUSE_CODING_SCHEME);
    if (coding_scheme != EFUSE_CODING_SCHEME_VAL_NONE && coding_scheme != EFUSE_CODING_SCHEME_VAL_34) {
        FUNC0(TAG, "Unknown/unsupported CODING_SCHEME value 0x%x", coding_scheme);
        return ESP_ERR_NOT_SUPPORTED;
    }

    /* Verify the bootloader */
    esp_image_metadata_t bootloader_data = { 0 };
    err = FUNC7(&bootloader_data);
    if (err != ESP_OK) {
        FUNC0(TAG, "bootloader image appears invalid! error %d", err);
        return err;
    }

    /* Generate secure boot key and keep in EFUSE */
    uint32_t dis_reg = FUNC4(EFUSE_BLK0_RDATA0_REG);
    bool efuse_key_read_protected = dis_reg & EFUSE_RD_DIS_BLK2;
    bool efuse_key_write_protected = dis_reg & EFUSE_WR_DIS_BLK2;
    if (efuse_key_read_protected == false
        && efuse_key_write_protected == false
        && FUNC4(EFUSE_BLK2_RDATA0_REG) == 0
        && FUNC4(EFUSE_BLK2_RDATA1_REG) == 0
        && FUNC4(EFUSE_BLK2_RDATA2_REG) == 0
        && FUNC4(EFUSE_BLK2_RDATA3_REG) == 0
        && FUNC4(EFUSE_BLK2_RDATA4_REG) == 0
        && FUNC4(EFUSE_BLK2_RDATA5_REG) == 0
        && FUNC4(EFUSE_BLK2_RDATA6_REG) == 0
        && FUNC4(EFUSE_BLK2_RDATA7_REG) == 0) {
        FUNC1(TAG, "Generating new secure boot key...");
        FUNC6(EFUSE_BLK2_WDATA0_REG);
        FUNC5();
    } else {
        FUNC2(TAG, "Using pre-loaded secure boot key in EFUSE block 2");
    }

    /* Generate secure boot digest using programmed key in EFUSE */
    FUNC1(TAG, "Generating secure boot digest...");
    uint32_t image_len = bootloader_data.image_len;
    if(bootloader_data.image.hash_appended) {
        /* Secure boot digest doesn't cover the hash */
        image_len -= ESP_IMAGE_HASH_LEN;
    }
    if (false == FUNC9(image_len)){
        FUNC0(TAG, "secure boot generation failed");
        return ESP_FAIL;
    }
    FUNC1(TAG, "Digest generation complete.");

    return ESP_OK;
}