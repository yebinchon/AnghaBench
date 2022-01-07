
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_partition_info_t ;
typedef scalar_t__ esp_err_t ;


 int EFUSE_BLK0_WDATA0_REG ;
 int EFUSE_FLASH_CRYPT_CNT ;
 int EFUSE_FLASH_CRYPT_CNT_S ;
 int EFUSE_RD_FLASH_CRYPT_CNT ;
 int EFUSE_WR_DIS_FLASH_CRYPT_CNT ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*,int,int) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int ESP_PARTITION_TABLE_MAX_ENTRIES ;
 int REG_WRITE (int ,int) ;
 int TAG ;
 int __builtin_ffs (int) ;
 scalar_t__ encrypt_and_load_partition_table (int *,int*) ;
 scalar_t__ encrypt_bootloader () ;
 scalar_t__ encrypt_partition (int,int *) ;
 int esp_efuse_burn_new_values () ;
 scalar_t__ initialise_flash_encryption () ;

__attribute__((used)) static esp_err_t encrypt_flash_contents(uint32_t flash_crypt_cnt, bool flash_crypt_wr_dis)
{
    esp_err_t err;
    esp_partition_info_t partition_table[ESP_PARTITION_TABLE_MAX_ENTRIES];
    int num_partitions;



    if (flash_crypt_wr_dis || flash_crypt_cnt == 0xFF) {
        ESP_LOGE(TAG, "Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d", flash_crypt_cnt, flash_crypt_wr_dis);
        return ESP_FAIL;
    }

    if (flash_crypt_cnt == 0) {

        err = initialise_flash_encryption();
        if (err != ESP_OK) {
            return err;
        }
    }

    err = encrypt_bootloader();
    if (err != ESP_OK) {
        return err;
    }

    err = encrypt_and_load_partition_table(partition_table, &num_partitions);
    if (err != ESP_OK) {
        return err;
    }





    for (int i = 0; i < num_partitions; i++) {
        err = encrypt_partition(i, &partition_table[i]);
        if (err != ESP_OK) {
            return err;
        }
    }

    ESP_LOGD(TAG, "All flash regions checked for encryption pass");


    int ffs_inv = __builtin_ffs((~flash_crypt_cnt) & EFUSE_RD_FLASH_CRYPT_CNT);

    uint32_t new_flash_crypt_cnt = flash_crypt_cnt + (1 << (ffs_inv - 1));
    ESP_LOGD(TAG, "FLASH_CRYPT_CNT 0x%x -> 0x%x", flash_crypt_cnt, new_flash_crypt_cnt);
    uint32_t wdata0_reg = ((new_flash_crypt_cnt & EFUSE_FLASH_CRYPT_CNT) << EFUSE_FLASH_CRYPT_CNT_S);





    REG_WRITE(EFUSE_BLK0_WDATA0_REG, wdata0_reg);
    esp_efuse_burn_new_values();

    ESP_LOGI(TAG, "Flash encryption completed");

    return ESP_OK;
}
