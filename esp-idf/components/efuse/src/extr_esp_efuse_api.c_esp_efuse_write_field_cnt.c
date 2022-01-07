
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;
typedef int esp_efuse_desc_t ;


 int EFUSE_LOCK_ACQUIRE_RUCURSIVE () ;
 int EFUSE_LOCK_RELEASE_RUCURSIVE () ;
 scalar_t__ ESP_ERR_EFUSE_CNT_IS_FULL ;
 scalar_t__ ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*,size_t) ;
 scalar_t__ ESP_OK ;
 scalar_t__ ESP_OK_EFUSE_CNT ;
 int TAG ;
 scalar_t__ esp_efuse_utility_apply_new_coding_scheme () ;
 int esp_efuse_utility_burn_efuses () ;
 scalar_t__ esp_efuse_utility_process (int const**,size_t*,int ,int ) ;
 int esp_efuse_utility_reset () ;
 int esp_efuse_utility_write_cnt ;
 int s_batch_writing_mode ;

esp_err_t esp_efuse_write_field_cnt(const esp_efuse_desc_t* field[], size_t cnt)
{
    EFUSE_LOCK_ACQUIRE_RUCURSIVE();
    esp_err_t err = ESP_OK;
    if (field == ((void*)0) || cnt == 0) {
        err = ESP_ERR_INVALID_ARG;
    } else {
        if (s_batch_writing_mode == 0) {
            esp_efuse_utility_reset();
        }
        err = esp_efuse_utility_process(field, &cnt, 0, esp_efuse_utility_write_cnt);

        if (cnt != 0) {
            ESP_LOGE(TAG, "The required number of bits can not be set. [Not set %d]", cnt);
            err = ESP_ERR_EFUSE_CNT_IS_FULL;
        }
        if (err == ESP_OK_EFUSE_CNT) {
            err = ESP_OK;
        }

        if (s_batch_writing_mode == 0) {
            if (err == ESP_OK) {
                err = esp_efuse_utility_apply_new_coding_scheme();
                if (err == ESP_OK) {
                    esp_efuse_utility_burn_efuses();
                }
            }
            esp_efuse_utility_reset();
        }
    }
    EFUSE_LOCK_RELEASE_RUCURSIVE();
    return err;
}
