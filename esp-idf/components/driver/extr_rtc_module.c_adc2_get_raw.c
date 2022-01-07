
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int esp_err_t ;
typedef int adc_bits_width_t ;
typedef scalar_t__ adc2_channel_t ;


 scalar_t__ ADC2_CHANNEL_MAX ;
 int ADC_CTRL_RTC ;
 int ADC_UNIT_2 ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_TIMEOUT ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 int _lock_release (int *) ;
 int _lock_try_acquire (int *) ;
 int adc2_config_width (int ) ;
 int adc2_dac_disable (scalar_t__) ;
 int adc2_spinlock ;
 int adc2_wifi_lock ;
 scalar_t__ adc_convert (int ,scalar_t__) ;
 int adc_power_on () ;
 int adc_set_controller (int ,int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t adc2_get_raw(adc2_channel_t channel, adc_bits_width_t width_bit, int* raw_out)
{
    uint16_t adc_value = 0;
    RTC_MODULE_CHECK(channel < ADC2_CHANNEL_MAX, "ADC Channel Err", ESP_ERR_INVALID_ARG);


    adc_power_on();


    portENTER_CRITICAL(&adc2_spinlock);


    if ( _lock_try_acquire( &adc2_wifi_lock ) == -1 ) {
        portEXIT_CRITICAL( &adc2_spinlock );
        return ESP_ERR_TIMEOUT;
    }
    adc2_config_width( width_bit );
    adc_set_controller( ADC_UNIT_2, ADC_CTRL_RTC );

    adc_value = adc_convert( ADC_UNIT_2, channel );
    _lock_release( &adc2_wifi_lock );
    portEXIT_CRITICAL(&adc2_spinlock);

    *raw_out = (int)adc_value;
    return ESP_OK;
}
