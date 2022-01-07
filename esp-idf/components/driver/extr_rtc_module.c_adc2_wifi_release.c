
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGD (int ,char*) ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int ,char*,int ) ;
 int RTC_MODULE_TAG ;
 int _lock_release (scalar_t__*) ;
 scalar_t__ adc2_wifi_lock ;

esp_err_t adc2_wifi_release(void)
{
    RTC_MODULE_CHECK((uint32_t*)adc2_wifi_lock != ((void*)0), "wifi release called before acquire", ESP_ERR_INVALID_STATE );

    _lock_release( &adc2_wifi_lock );
    ESP_LOGD( RTC_MODULE_TAG, "Wi-Fi returns adc2 lock." );
    return ESP_OK;
}
