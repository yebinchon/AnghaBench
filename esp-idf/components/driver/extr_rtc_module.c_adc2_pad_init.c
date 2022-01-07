
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_num_t ;
typedef int esp_err_t ;
typedef int adc2_channel_t ;


 int ADC2_CHECK_FUNCTION_RET (int ) ;
 int ESP_OK ;
 int GPIO_FLOATING ;
 int adc2_pad_get_io_num (int ,int *) ;
 int gpio_set_pull_mode (int ,int ) ;
 int rtc_gpio_init (int ) ;
 int rtc_gpio_input_disable (int ) ;
 int rtc_gpio_output_disable (int ) ;

__attribute__((used)) static esp_err_t adc2_pad_init(adc2_channel_t channel)
{
    gpio_num_t gpio_num = 0;
    ADC2_CHECK_FUNCTION_RET(adc2_pad_get_io_num(channel, &gpio_num));
    ADC2_CHECK_FUNCTION_RET(rtc_gpio_init(gpio_num));
    ADC2_CHECK_FUNCTION_RET(rtc_gpio_output_disable(gpio_num));
    ADC2_CHECK_FUNCTION_RET(rtc_gpio_input_disable(gpio_num));
    ADC2_CHECK_FUNCTION_RET(gpio_set_pull_mode(gpio_num, GPIO_FLOATING));
    return ESP_OK;
}
