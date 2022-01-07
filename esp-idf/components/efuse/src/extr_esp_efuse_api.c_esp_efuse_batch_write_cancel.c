
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int EFUSE_LOCK_RELEASE () ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int esp_efuse_utility_reset () ;
 int s_batch_writing_mode ;

esp_err_t esp_efuse_batch_write_cancel(void)
{
    if (s_batch_writing_mode == 1) {
        s_batch_writing_mode = 0;
        esp_efuse_utility_reset();
        ESP_LOGI(TAG, "Batch mode of writing fields is disabled");
        EFUSE_LOCK_RELEASE();
        return ESP_OK;
    } else {
        return ESP_ERR_INVALID_STATE;
    }
}
