
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ adc1_channel_t ;


 scalar_t__ ADC1_CHANNEL_MAX ;
 int ADC_CTRL_RTC ;
 int ADC_UNIT_1 ;
 int ESP_ERR_INVALID_ARG ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 int adc1_adc_mode_acquire () ;
 int adc1_fsm_disable () ;
 int adc1_hall_enable (int) ;
 int adc1_lock_release () ;
 int adc_convert (int ,scalar_t__) ;
 int adc_power_on () ;
 int adc_set_controller (int ,int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

int adc1_get_raw(adc1_channel_t channel)
{
    uint16_t adc_value;
    RTC_MODULE_CHECK(channel < ADC1_CHANNEL_MAX, "ADC Channel Err", ESP_ERR_INVALID_ARG);
    adc1_adc_mode_acquire();
    adc_power_on();

    portENTER_CRITICAL(&rtc_spinlock);

    adc1_hall_enable(0);
    adc1_fsm_disable();

    adc_set_controller( ADC_UNIT_1, ADC_CTRL_RTC );

    adc_value = adc_convert( ADC_UNIT_1, channel );
    portEXIT_CRITICAL(&rtc_spinlock);
    adc1_lock_release();
    return adc_value;
}
