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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_BLK0_RDATA0_REG ; 
 int /*<<< orphan*/  EFUSE_BLK0_RDATA6_REG ; 
 int /*<<< orphan*/  EFUSE_BLK0_WDATA0_REG ; 
 int /*<<< orphan*/  EFUSE_BLK0_WDATA5_REG ; 
 int /*<<< orphan*/  EFUSE_BLK0_WDATA6_REG ; 
 int /*<<< orphan*/  EFUSE_BLK1_RDATA0_REG ; 
 int /*<<< orphan*/  EFUSE_BLK1_RDATA1_REG ; 
 int /*<<< orphan*/  EFUSE_BLK1_RDATA2_REG ; 
 int /*<<< orphan*/  EFUSE_BLK1_RDATA3_REG ; 
 int /*<<< orphan*/  EFUSE_BLK1_RDATA4_REG ; 
 int /*<<< orphan*/  EFUSE_BLK1_RDATA5_REG ; 
 int /*<<< orphan*/  EFUSE_BLK1_RDATA6_REG ; 
 int /*<<< orphan*/  EFUSE_BLK1_RDATA7_REG ; 
 int /*<<< orphan*/  EFUSE_BLK1_WDATA0_REG ; 
 int /*<<< orphan*/  EFUSE_CODING_SCHEME ; 
 scalar_t__ EFUSE_CODING_SCHEME_VAL_34 ; 
 scalar_t__ EFUSE_CODING_SCHEME_VAL_NONE ; 
 scalar_t__ EFUSE_DISABLE_DL_CACHE ; 
 scalar_t__ EFUSE_DISABLE_DL_DECRYPT ; 
 scalar_t__ EFUSE_DISABLE_DL_ENCRYPT ; 
 scalar_t__ EFUSE_FLASH_CRYPT_CONFIG_M ; 
 scalar_t__ EFUSE_RD_CONSOLE_DEBUG_DISABLE ; 
 scalar_t__ EFUSE_RD_DISABLE_JTAG ; 
 scalar_t__ EFUSE_RD_DIS_BLK1 ; 
 scalar_t__ EFUSE_WR_DIS_BLK1 ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC8(void)
{
    uint32_t coding_scheme = FUNC3(EFUSE_BLK0_RDATA6_REG, EFUSE_CODING_SCHEME);
    if (coding_scheme != EFUSE_CODING_SCHEME_VAL_NONE && coding_scheme != EFUSE_CODING_SCHEME_VAL_34) {
        FUNC0(TAG, "Unknown/unsupported CODING_SCHEME value 0x%x", coding_scheme);
        return ESP_ERR_NOT_SUPPORTED;
    }

    /* Before first flash encryption pass, need to initialise key & crypto config */

    /* Generate key */
    uint32_t dis_reg = FUNC4(EFUSE_BLK0_RDATA0_REG);
    bool efuse_key_read_protected = dis_reg & EFUSE_RD_DIS_BLK1;
    bool efuse_key_write_protected = dis_reg & EFUSE_WR_DIS_BLK1;
    if (efuse_key_read_protected == false
        && efuse_key_write_protected == false
        && FUNC4(EFUSE_BLK1_RDATA0_REG) == 0
        && FUNC4(EFUSE_BLK1_RDATA1_REG) == 0
        && FUNC4(EFUSE_BLK1_RDATA2_REG) == 0
        && FUNC4(EFUSE_BLK1_RDATA3_REG) == 0
        && FUNC4(EFUSE_BLK1_RDATA4_REG) == 0
        && FUNC4(EFUSE_BLK1_RDATA5_REG) == 0
        && FUNC4(EFUSE_BLK1_RDATA6_REG) == 0
        && FUNC4(EFUSE_BLK1_RDATA7_REG) == 0) {
        FUNC1(TAG, "Generating new flash encryption key...");
        FUNC7(EFUSE_BLK1_WDATA0_REG);
        FUNC6();

        FUNC1(TAG, "Read & write protecting new key...");
        FUNC5(EFUSE_BLK0_WDATA0_REG, EFUSE_WR_DIS_BLK1 | EFUSE_RD_DIS_BLK1);
        FUNC6();
    } else {

        if(!(efuse_key_read_protected && efuse_key_write_protected)) {
            FUNC0(TAG, "Flash encryption key has to be either unset or both read and write protected");
            return ESP_ERR_INVALID_STATE;
        }
        FUNC2(TAG, "Using pre-loaded flash encryption key in EFUSE block 1");
    }
    /* CRYPT_CONFIG determines which bits of the AES block key are XORed
       with bits from the flash address, to provide the key tweak.

       CRYPT_CONFIG == 0 is effectively AES ECB mode (NOT SUPPORTED)

       For now this is hardcoded to XOR all 256 bits of the key.

       If you need to override it, you can pre-burn this efuse to the
       desired value and then write-protect it, in which case this
       operation does nothing. Please note this is not recommended!
    */
    FUNC1(TAG, "Setting CRYPT_CONFIG efuse to 0xF");
    FUNC5(EFUSE_BLK0_WDATA5_REG, EFUSE_FLASH_CRYPT_CONFIG_M);
    FUNC6();

    uint32_t new_wdata6 = 0;
#ifndef CONFIG_SECURE_FLASH_UART_BOOTLOADER_ALLOW_ENC
    FUNC1(TAG, "Disable UART bootloader encryption...");
    new_wdata6 |= EFUSE_DISABLE_DL_ENCRYPT;
#else
    ESP_LOGW(TAG, "Not disabling UART bootloader encryption");
#endif
#ifndef CONFIG_SECURE_FLASH_UART_BOOTLOADER_ALLOW_DEC
    FUNC1(TAG, "Disable UART bootloader decryption...");
    new_wdata6 |= EFUSE_DISABLE_DL_DECRYPT;
#else
    ESP_LOGW(TAG, "Not disabling UART bootloader decryption - SECURITY COMPROMISED");
#endif
#ifndef CONFIG_SECURE_FLASH_UART_BOOTLOADER_ALLOW_CACHE
    FUNC1(TAG, "Disable UART bootloader MMU cache...");
    new_wdata6 |= EFUSE_DISABLE_DL_CACHE;
#else
    ESP_LOGW(TAG, "Not disabling UART bootloader MMU cache - SECURITY COMPROMISED");
#endif
#ifndef CONFIG_SECURE_BOOT_ALLOW_JTAG
    FUNC1(TAG, "Disable JTAG...");
    new_wdata6 |= EFUSE_RD_DISABLE_JTAG;
#else
    ESP_LOGW(TAG, "Not disabling JTAG - SECURITY COMPROMISED");
#endif
#ifndef CONFIG_SECURE_BOOT_ALLOW_ROM_BASIC
    FUNC1(TAG, "Disable ROM BASIC interpreter fallback...");
    new_wdata6 |= EFUSE_RD_CONSOLE_DEBUG_DISABLE;
#else
    ESP_LOGW(TAG, "Not disabling ROM BASIC fallback - SECURITY COMPROMISED");
#endif

    if (new_wdata6 != 0) {
        FUNC5(EFUSE_BLK0_WDATA6_REG, new_wdata6);
        FUNC6();
    }

    return ESP_OK;
}