
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_bluedroid_status_t ;


 int ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_BLUEDROID_STATUS_INITIALIZED ;
 int ESP_BLUEDROID_STATUS_UNINITIALIZED ;
 scalar_t__ bd_already_enable ;
 scalar_t__ bd_already_init ;

esp_bluedroid_status_t esp_bluedroid_get_status(void)
{
    if (bd_already_init) {
        if (bd_already_enable) {
            return ESP_BLUEDROID_STATUS_ENABLED;
        } else {
            return ESP_BLUEDROID_STATUS_INITIALIZED;
        }
    } else {
        return ESP_BLUEDROID_STATUS_UNINITIALIZED;
    }
}
