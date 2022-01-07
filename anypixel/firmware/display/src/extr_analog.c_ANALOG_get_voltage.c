
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ADC_PINS_NUM ;
 int* adc_readings ;

uint16_t ANALOG_get_voltage(int channel) {
    if(channel < ADC_PINS_NUM)
        return adc_readings[channel];
    else
        return 0xFFFF;
}
