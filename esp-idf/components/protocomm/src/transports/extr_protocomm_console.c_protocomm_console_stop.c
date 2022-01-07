
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int protocomm_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int console_task ;
 int * pc_console ;
 int xTaskNotifyGive (int ) ;

esp_err_t protocomm_console_stop(protocomm_t *pc)
{
    if (pc != pc_console) {
        ESP_LOGE(TAG, "Incorrect stop request");
        return ESP_ERR_INVALID_ARG;
    }

    ESP_LOGI(TAG, "Stopping console...");
    xTaskNotifyGive(console_task);
    return ESP_OK;
}
