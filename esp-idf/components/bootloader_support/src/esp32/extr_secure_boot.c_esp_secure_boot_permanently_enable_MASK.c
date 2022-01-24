#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_BLK0_RDATA0_REG ; 
 int /*<<< orphan*/  EFUSE_BLK0_RDATA6_REG ; 
 int /*<<< orphan*/  EFUSE_BLK0_WDATA0_REG ; 
 int /*<<< orphan*/  EFUSE_BLK0_WDATA6_REG ; 
 int EFUSE_RD_ABS_DONE_0 ; 
 int EFUSE_RD_CONSOLE_DEBUG_DISABLE ; 
 int EFUSE_RD_DISABLE_JTAG ; 
 int EFUSE_RD_DIS_BLK2 ; 
 int EFUSE_WR_DIS_BLK2 ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

esp_err_t FUNC8(void)
{
    if (FUNC7()) {
        FUNC2(TAG, "bootloader secure boot is already enabled, continuing..");
        return ESP_OK;
    }

    uint32_t dis_reg = FUNC4(EFUSE_BLK0_RDATA0_REG);
    bool efuse_key_read_protected = dis_reg & EFUSE_RD_DIS_BLK2;
    bool efuse_key_write_protected = dis_reg & EFUSE_WR_DIS_BLK2;
    if (efuse_key_read_protected == false
        && efuse_key_write_protected == false) {
        FUNC2(TAG, "Read & write protecting new key...");
        FUNC5(EFUSE_BLK0_WDATA0_REG, EFUSE_WR_DIS_BLK2 | EFUSE_RD_DIS_BLK2);
        FUNC6();
        efuse_key_read_protected = true;
        efuse_key_write_protected = true;
    }

    if (!efuse_key_read_protected) {
        FUNC1(TAG, "Pre-loaded key is not read protected. Refusing to blow secure boot efuse.");
        return ESP_ERR_INVALID_STATE;
    }
    if (!efuse_key_write_protected) {
        FUNC1(TAG, "Pre-loaded key is not write protected. Refusing to blow secure boot efuse.");
        return ESP_ERR_INVALID_STATE;
    }

    FUNC2(TAG, "blowing secure boot efuse...");
    FUNC0(TAG, "before updating, EFUSE_BLK0_RDATA6 %x", FUNC4(EFUSE_BLK0_RDATA6_REG));

    uint32_t new_wdata6 = EFUSE_RD_ABS_DONE_0;

#ifndef CONFIG_SECURE_BOOT_ALLOW_JTAG
    FUNC2(TAG, "Disable JTAG...");
    new_wdata6 |= EFUSE_RD_DISABLE_JTAG;
#else
    ESP_LOGW(TAG, "Not disabling JTAG - SECURITY COMPROMISED");
#endif

#ifndef CONFIG_SECURE_BOOT_ALLOW_ROM_BASIC
    FUNC2(TAG, "Disable ROM BASIC interpreter fallback...");
    new_wdata6 |= EFUSE_RD_CONSOLE_DEBUG_DISABLE;
#else
    ESP_LOGW(TAG, "Not disabling ROM BASIC fallback - SECURITY COMPROMISED");
#endif

    FUNC5(EFUSE_BLK0_WDATA6_REG, new_wdata6);
    FUNC6();
    uint32_t after = FUNC4(EFUSE_BLK0_RDATA6_REG);
    FUNC0(TAG, "after updating, EFUSE_BLK0_RDATA6 %x", after);
    if (after & EFUSE_RD_ABS_DONE_0) {
        FUNC2(TAG, "secure boot is now enabled for bootloader image");
        return ESP_OK;
    } else {
        FUNC1(TAG, "secure boot not enabled for bootloader image, EFUSE_RD_ABS_DONE_0 is probably write protected!");
        return ESP_ERR_INVALID_STATE;
    }
}