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
typedef  int /*<<< orphan*/  esp_partition_info_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_BLK0_WDATA0_REG ; 
 int EFUSE_FLASH_CRYPT_CNT ; 
 int EFUSE_FLASH_CRYPT_CNT_S ; 
 int EFUSE_RD_FLASH_CRYPT_CNT ; 
 int EFUSE_WR_DIS_FLASH_CRYPT_CNT ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int ESP_PARTITION_TABLE_MAX_ENTRIES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static esp_err_t FUNC10(uint32_t flash_crypt_cnt, bool flash_crypt_wr_dis)
{
    esp_err_t err;
    esp_partition_info_t partition_table[ESP_PARTITION_TABLE_MAX_ENTRIES];
    int num_partitions;

    /* If the last flash_crypt_cnt bit is burned or write-disabled, the
       device can't re-encrypt itself. */
    if (flash_crypt_wr_dis || flash_crypt_cnt == 0xFF) {
        FUNC1(TAG, "Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d", flash_crypt_cnt, flash_crypt_wr_dis);
        return ESP_FAIL;
    }

    if (flash_crypt_cnt == 0) {
        /* Very first flash of encrypted data: generate keys, etc. */
        err = FUNC9();
        if (err != ESP_OK) {
            return err;
        }
    }

    err = FUNC6();
    if (err != ESP_OK) {
        return err;
    }

    err = FUNC5(partition_table, &num_partitions);
    if (err != ESP_OK) {
        return err;
    }

    /* Now iterate the just-loaded partition table, looking for entries to encrypt
     */

    /* Go through each partition and encrypt if necessary */
    for (int i = 0; i < num_partitions; i++) {
        err = FUNC7(i, &partition_table[i]);
        if (err != ESP_OK) {
            return err;
        }
    }

    FUNC0(TAG, "All flash regions checked for encryption pass");

    /* Set least significant 0-bit in flash_crypt_cnt */
    int ffs_inv = FUNC4((~flash_crypt_cnt) & EFUSE_RD_FLASH_CRYPT_CNT);
    /* ffs_inv shouldn't be zero, as zero implies flash_crypt_cnt == EFUSE_RD_FLASH_CRYPT_CNT (0x7F) */
    uint32_t new_flash_crypt_cnt = flash_crypt_cnt + (1 << (ffs_inv - 1));
    FUNC0(TAG, "FLASH_CRYPT_CNT 0x%x -> 0x%x", flash_crypt_cnt, new_flash_crypt_cnt);
    uint32_t wdata0_reg = ((new_flash_crypt_cnt & EFUSE_FLASH_CRYPT_CNT) << EFUSE_FLASH_CRYPT_CNT_S);
#ifdef CONFIG_SECURE_FLASH_ENCRYPTION_MODE_RELEASE
    ESP_LOGI(TAG, "Write protecting FLASH_CRYPT_CNT eFuse");
    wdata0_reg |= EFUSE_WR_DIS_FLASH_CRYPT_CNT;
#endif

    FUNC3(EFUSE_BLK0_WDATA0_REG, wdata0_reg);
    FUNC8();

    FUNC2(TAG, "Flash encryption completed");

    return ESP_OK;
}