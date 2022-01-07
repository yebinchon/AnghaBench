
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int esp_efuse_batch_write_cancel () ;
 scalar_t__ esp_efuse_utility_apply_new_coding_scheme () ;
 int esp_efuse_utility_burn_efuses () ;
 int s_batch_writing_mode ;

esp_err_t esp_efuse_batch_write_commit(void)
{
    if (s_batch_writing_mode == 0) {
        return ESP_ERR_INVALID_STATE;
    } else {
        esp_err_t err = esp_efuse_utility_apply_new_coding_scheme();
        if (err == ESP_OK) {
            esp_efuse_utility_burn_efuses();
        }
        esp_efuse_batch_write_cancel();
        return err;
    }
}
