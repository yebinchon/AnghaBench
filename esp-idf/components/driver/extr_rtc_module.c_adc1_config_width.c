
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef scalar_t__ adc_bits_width_t ;


 int ADC_UNIT_1 ;
 scalar_t__ ADC_WIDTH_MAX ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 int adc_set_data_inv (int ,int) ;
 int adc_set_data_width (int ,scalar_t__) ;

esp_err_t adc1_config_width(adc_bits_width_t width_bit)
{
    RTC_MODULE_CHECK(width_bit < ADC_WIDTH_MAX, "ADC bit width error", ESP_ERR_INVALID_ARG);
    adc_set_data_width(ADC_UNIT_1, width_bit);
    adc_set_data_inv(ADC_UNIT_1, 1);
    return ESP_OK;
}
