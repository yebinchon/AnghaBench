
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int ,char*,int ) ;
 int _lock_release (scalar_t__*) ;
 scalar_t__ adc1_i2s_lock ;

esp_err_t adc1_lock_release(void)
{
    RTC_MODULE_CHECK((uint32_t*)adc1_i2s_lock != ((void*)0), "adc1 lock release called before acquire", ESP_ERR_INVALID_STATE );




    _lock_release( &adc1_i2s_lock );
    return ESP_OK;
}
