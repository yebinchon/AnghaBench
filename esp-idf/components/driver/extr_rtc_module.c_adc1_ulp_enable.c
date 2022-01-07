
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADC_CTRL_ULP ;
 int ADC_UNIT_1 ;
 int adc1_fsm_disable () ;
 int adc1_hall_enable (int) ;
 int adc_power_on () ;
 int adc_set_controller (int ,int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

void adc1_ulp_enable(void)
{
    adc_power_on();

    portENTER_CRITICAL(&rtc_spinlock);
    adc_set_controller( ADC_UNIT_1, ADC_CTRL_ULP );


    adc1_fsm_disable();
    adc1_hall_enable(0);
    portEXIT_CRITICAL(&rtc_spinlock);
}
