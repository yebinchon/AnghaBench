
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_adc_cal_value_t ;
typedef int esp_adc_cal_characteristics_t ;
typedef int adc2_channel_t ;
typedef int adc1_channel_t ;


 int ADC_UNIT_1 ;
 int ADC_WIDTH_BIT_12 ;
 int DEFAULT_VREF ;
 int NO_OF_SAMPLES ;
 int adc1_config_channel_atten (int,int ) ;
 int adc1_config_width (int ) ;
 scalar_t__ adc1_get_raw (int ) ;
 int adc2_config_channel_atten (int ,int ) ;
 int adc2_get_raw (int ,int ,int*) ;
 int adc_chars ;
 int atten ;
 int calloc (int,int) ;
 int channel ;
 int check_efuse () ;
 int esp_adc_cal_characterize (int,int ,int ,int ,int ) ;
 int esp_adc_cal_raw_to_voltage (int,int ) ;
 int pdMS_TO_TICKS (int) ;
 int print_char_val_type (int ) ;
 int printf (char*,int,int,...) ;
 int unit ;
 int vTaskDelay (int ) ;

void app_main(void)
{






    if (unit == ADC_UNIT_1) {
        adc1_config_width(ADC_WIDTH_BIT_12);
        adc1_config_channel_atten(channel, atten);
    } else {
        adc2_config_channel_atten((adc2_channel_t)channel, atten);
    }
    while (1) {
        uint32_t adc_reading = 0;

        for (int i = 0; i < NO_OF_SAMPLES; i++) {
            if (unit == ADC_UNIT_1) {
                adc_reading += adc1_get_raw((adc1_channel_t)channel);
            } else {
                int raw;
                adc2_get_raw((adc2_channel_t)channel, ADC_WIDTH_BIT_12, &raw);
                adc_reading += raw;
            }
        }
        adc_reading /= NO_OF_SAMPLES;







        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}
