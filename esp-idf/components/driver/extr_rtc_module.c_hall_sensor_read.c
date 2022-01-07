
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADC1_CHANNEL_0 ;
 int ADC1_CHANNEL_3 ;
 int ADC_ATTEN_DB_0 ;
 int ADC_UNIT_1 ;
 int adc1_config_channel_atten (int ,int ) ;
 int adc_gpio_init (int ,int ) ;
 int hall_sensor_get_value () ;

int hall_sensor_read(void)
{
    adc_gpio_init(ADC_UNIT_1, ADC1_CHANNEL_0);
    adc_gpio_init(ADC_UNIT_1, ADC1_CHANNEL_3);
    adc1_config_channel_atten(ADC1_CHANNEL_0, ADC_ATTEN_DB_0);
    adc1_config_channel_atten(ADC1_CHANNEL_3, ADC_ATTEN_DB_0);
    return hall_sensor_get_value();
}
