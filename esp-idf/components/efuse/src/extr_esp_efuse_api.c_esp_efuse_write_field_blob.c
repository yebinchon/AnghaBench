
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;
typedef int esp_efuse_desc_t ;


 int EFUSE_LOCK_ACQUIRE_RUCURSIVE () ;
 int EFUSE_LOCK_RELEASE_RUCURSIVE () ;
 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_OK ;
 scalar_t__ esp_efuse_utility_apply_new_coding_scheme () ;
 int esp_efuse_utility_burn_efuses () ;
 scalar_t__ esp_efuse_utility_process (int const**,void*,size_t,int ) ;
 int esp_efuse_utility_reset () ;
 int esp_efuse_utility_write_blob ;
 int s_batch_writing_mode ;

esp_err_t esp_efuse_write_field_blob(const esp_efuse_desc_t* field[], const void* src, size_t src_size_bits)
{
    EFUSE_LOCK_ACQUIRE_RUCURSIVE();
    esp_err_t err = ESP_OK;
    if (field == ((void*)0) || src == ((void*)0) || src_size_bits == 0) {
        err = ESP_ERR_INVALID_ARG;
    } else {
        if (s_batch_writing_mode == 0) {
            esp_efuse_utility_reset();
        }
        err = esp_efuse_utility_process(field, (void*)src, src_size_bits, esp_efuse_utility_write_blob);

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
