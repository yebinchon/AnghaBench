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
typedef  scalar_t__ esp_flash_enc_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_EFUSE_FLASH_CRYPT_CNT ; 
 scalar_t__ ESP_FLASH_ENC_MODE_DEVELOPMENT ; 
 scalar_t__ ESP_FLASH_ENC_MODE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    uint32_t flash_crypt_cnt = 0;
    FUNC0(ESP_EFUSE_FLASH_CRYPT_CNT, &flash_crypt_cnt, 7);
    FUNC2("FLASH_CRYPT_CNT eFuse value is %d\n", flash_crypt_cnt);

    esp_flash_enc_mode_t mode = FUNC1();
    if (mode == ESP_FLASH_ENC_MODE_DISABLED) {
        FUNC2("Flash encryption feature is disabled\n");
    } else {
        FUNC2("Flash encryption feature is enabled in %s mode\n",
            mode == ESP_FLASH_ENC_MODE_DEVELOPMENT ? "DEVELOPMENT" : "RELEASE");
    }
}