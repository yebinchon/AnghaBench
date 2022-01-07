
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_4__ {scalar_t__ adc_num; int bit_width; } ;
typedef TYPE_1__ esp_adc_cal_characteristics_t ;
typedef scalar_t__ adc_channel_t ;
typedef scalar_t__ adc2_channel_t ;
typedef scalar_t__ adc1_channel_t ;


 scalar_t__ ADC1_CHANNEL_MAX ;
 scalar_t__ ADC2_CHANNEL_MAX ;
 int ADC_CAL_CHECK (int,int ) ;
 scalar_t__ ADC_UNIT_1 ;
 int ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_TIMEOUT ;
 scalar_t__ ESP_OK ;
 int adc1_get_raw (scalar_t__) ;
 scalar_t__ adc2_get_raw (scalar_t__,int ,int*) ;
 int esp_adc_cal_raw_to_voltage (int ,TYPE_1__ const*) ;

esp_err_t esp_adc_cal_get_voltage(adc_channel_t channel,
                                  const esp_adc_cal_characteristics_t *chars,
                                  uint32_t *voltage)
{

    ADC_CAL_CHECK(chars != ((void*)0), ESP_ERR_INVALID_ARG);
    ADC_CAL_CHECK(voltage != ((void*)0), ESP_ERR_INVALID_ARG);

    int adc_reading;
    if (chars->adc_num == ADC_UNIT_1) {

        ADC_CAL_CHECK((adc1_channel_t)channel < ADC1_CHANNEL_MAX, ESP_ERR_INVALID_ARG);
        adc_reading = adc1_get_raw(channel);
    } else {

        ADC_CAL_CHECK((adc2_channel_t)channel < ADC2_CHANNEL_MAX, ESP_ERR_INVALID_ARG);
        if (adc2_get_raw(channel, chars->bit_width, &adc_reading) != ESP_OK) {
            return ESP_ERR_TIMEOUT;
        }
    }
    *voltage = esp_adc_cal_raw_to_voltage((uint32_t)adc_reading, chars);
    return ESP_OK;
}
