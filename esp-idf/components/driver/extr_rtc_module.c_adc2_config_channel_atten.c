
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int adc_atten_t ;
typedef int adc2_channel_t ;
struct TYPE_2__ {int sar_atten2; } ;


 int ADC2_CHANNEL_MAX ;
 int ADC_ATTEN_11db ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_TIMEOUT ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 TYPE_1__ SENS ;
 int _lock_release (int *) ;
 int _lock_try_acquire (int *) ;
 int adc2_pad_init (int) ;
 int adc2_spinlock ;
 int adc2_wifi_lock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;

esp_err_t adc2_config_channel_atten(adc2_channel_t channel, adc_atten_t atten)
{
    RTC_MODULE_CHECK(channel < ADC2_CHANNEL_MAX, "ADC2 Channel Err", ESP_ERR_INVALID_ARG);
    RTC_MODULE_CHECK(atten <= ADC_ATTEN_11db, "ADC2 Atten Err", ESP_ERR_INVALID_ARG);

    adc2_pad_init(channel);
    portENTER_CRITICAL( &adc2_spinlock );



    if ( _lock_try_acquire( &adc2_wifi_lock ) == -1 ) {

        portEXIT_CRITICAL( &adc2_spinlock );
        return ESP_ERR_TIMEOUT;
    }
    SENS.sar_atten2 = ( SENS.sar_atten2 & ~(3<<(channel*2)) ) | ((atten&3) << (channel*2));
    _lock_release( &adc2_wifi_lock );

    portEXIT_CRITICAL( &adc2_spinlock );
    return ESP_OK;
}
