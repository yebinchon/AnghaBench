
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_num_t ;
typedef int esp_err_t ;
typedef int adc_unit_t ;
typedef scalar_t__ adc_channel_t ;
typedef scalar_t__ adc1_channel_t ;


 scalar_t__ ADC1_CHANNEL_MAX ;
 int ADC1_CHECK_FUNCTION_RET (int ) ;
 int ADC_CHECK_UNIT (int) ;
 int ADC_UNIT_1 ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int GPIO_FLOATING ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 int adc1_pad_get_io_num (scalar_t__,int *) ;
 int gpio_set_pull_mode (int ,int ) ;
 int rtc_gpio_init (int ) ;
 int rtc_gpio_input_disable (int ) ;
 int rtc_gpio_output_disable (int ) ;

esp_err_t adc_gpio_init(adc_unit_t adc_unit, adc_channel_t channel)
{
    ADC_CHECK_UNIT(adc_unit);
    gpio_num_t gpio_num = 0;
    if (adc_unit & ADC_UNIT_1) {
        RTC_MODULE_CHECK((adc1_channel_t) channel < ADC1_CHANNEL_MAX, "ADC1 channel error", ESP_ERR_INVALID_ARG);
        ADC1_CHECK_FUNCTION_RET(adc1_pad_get_io_num((adc1_channel_t) channel, &gpio_num));
        ADC1_CHECK_FUNCTION_RET(rtc_gpio_init(gpio_num));
        ADC1_CHECK_FUNCTION_RET(rtc_gpio_output_disable(gpio_num));
        ADC1_CHECK_FUNCTION_RET(rtc_gpio_input_disable(gpio_num));
        ADC1_CHECK_FUNCTION_RET(gpio_set_pull_mode(gpio_num, GPIO_FLOATING));
    }
    return ESP_OK;
}
