
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hall_phase; } ;
struct TYPE_4__ {TYPE_1__ hall_sens; } ;


 int ADC1_CHANNEL_0 ;
 int ADC1_CHANNEL_3 ;
 int ADC_CTRL_RTC ;
 int ADC_UNIT_1 ;
 TYPE_2__ RTCIO ;
 int adc1_fsm_disable () ;
 int adc1_hall_enable (int) ;
 int adc_convert (int ,int ) ;
 int adc_power_on () ;
 int adc_set_controller (int ,int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

__attribute__((used)) static int hall_sensor_get_value(void)
{
    int hall_value = 0;

    adc_power_on();
    return hall_value;
}
