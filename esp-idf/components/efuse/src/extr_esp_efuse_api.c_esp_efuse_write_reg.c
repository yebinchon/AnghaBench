
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ esp_err_t ;
typedef int esp_efuse_block_t ;


 int EFUSE_LOCK_ACQUIRE_RUCURSIVE () ;
 int EFUSE_LOCK_RELEASE_RUCURSIVE () ;
 scalar_t__ ESP_OK ;
 scalar_t__ esp_efuse_utility_apply_new_coding_scheme () ;
 int esp_efuse_utility_burn_efuses () ;
 int esp_efuse_utility_reset () ;
 scalar_t__ esp_efuse_utility_write_reg (int ,unsigned int,int ) ;
 int s_batch_writing_mode ;

esp_err_t esp_efuse_write_reg(esp_efuse_block_t blk, unsigned int num_reg, uint32_t val)
{
    EFUSE_LOCK_ACQUIRE_RUCURSIVE();
    if (s_batch_writing_mode == 0) {
        esp_efuse_utility_reset();
    }
    esp_err_t err = esp_efuse_utility_write_reg(blk, num_reg, val);
    if (s_batch_writing_mode == 0) {
        if (err == ESP_OK) {
            err = esp_efuse_utility_apply_new_coding_scheme();
            if (err == ESP_OK) {
                esp_efuse_utility_burn_efuses();
            }
        }
        esp_efuse_utility_reset();
    }
    EFUSE_LOCK_RELEASE_RUCURSIVE();
    return err;
}
