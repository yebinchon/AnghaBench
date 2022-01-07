
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef scalar_t__ adc_atten_t ;
typedef scalar_t__ adc1_channel_t ;


 scalar_t__ ADC1_CHANNEL_MAX ;
 scalar_t__ ADC_ATTEN_MAX ;
 int ADC_UNIT_1 ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 int adc_gpio_init (int ,scalar_t__) ;
 int adc_set_atten (int ,scalar_t__,scalar_t__) ;

esp_err_t adc1_config_channel_atten(adc1_channel_t channel, adc_atten_t atten)
{
    RTC_MODULE_CHECK(channel < ADC1_CHANNEL_MAX, "ADC Channel Err", ESP_ERR_INVALID_ARG);
    RTC_MODULE_CHECK(atten < ADC_ATTEN_MAX, "ADC Atten Err", ESP_ERR_INVALID_ARG);
    adc_gpio_init(ADC_UNIT_1, channel);
    adc_set_atten(ADC_UNIT_1, channel, atten);
    return ESP_OK;
}
