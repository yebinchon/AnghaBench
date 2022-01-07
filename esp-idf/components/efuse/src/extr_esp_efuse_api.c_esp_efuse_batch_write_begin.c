
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int EFUSE_LOCK_ACQUIRE () ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int esp_efuse_utility_reset () ;
 int s_batch_writing_mode ;

esp_err_t esp_efuse_batch_write_begin(void)
{
    EFUSE_LOCK_ACQUIRE();
    s_batch_writing_mode = 1;
    esp_efuse_utility_reset();
    ESP_LOGI(TAG, "Batch mode of writing fields is enabled");
    return ESP_OK;
}
