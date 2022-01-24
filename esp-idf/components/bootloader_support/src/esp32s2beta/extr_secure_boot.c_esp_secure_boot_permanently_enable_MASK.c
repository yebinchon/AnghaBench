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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_PGM_DATA3_REG ; 
 int /*<<< orphan*/  EFUSE_SECURE_BOOT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int ESP_OK ; 
 int /*<<< orphan*/  ETS_EFUSE_BLOCK0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

esp_err_t FUNC8(void)
{
    uint8_t hash[32];

    if (FUNC6())
    {
        FUNC1(TAG, "secure boot is already enabled, continuing..");
        return ESP_OK;
    }

    FUNC1(TAG, "Verifying bootloader signature...\n");
    int r = FUNC7(hash, false);
    if (r != ESP_OK) {
        FUNC0(TAG, "Failed to verify bootloader signature");
        return r;
    }

    FUNC4();
    FUNC2(EFUSE_PGM_DATA3_REG, EFUSE_SECURE_BOOT_EN);
    FUNC5(ETS_EFUSE_BLOCK0);

    FUNC3(FUNC6());
    FUNC1(TAG, "Secure boot permanently enabled");

    return ESP_OK;
}