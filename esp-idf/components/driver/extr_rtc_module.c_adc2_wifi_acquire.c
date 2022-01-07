
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_LOGD (int ,char*) ;
 int ESP_OK ;
 int RTC_MODULE_TAG ;
 int _lock_acquire (int *) ;
 int adc2_wifi_lock ;

esp_err_t adc2_wifi_acquire(void)
{


    _lock_acquire( &adc2_wifi_lock );
    ESP_LOGD( RTC_MODULE_TAG, "Wi-Fi takes adc2 lock." );
    return ESP_OK;
}
