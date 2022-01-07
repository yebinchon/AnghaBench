
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_num_t ;
typedef int esp_err_t ;
typedef scalar_t__ dac_channel_t ;


 scalar_t__ DAC_CHANNEL_1 ;
 scalar_t__ DAC_CHANNEL_MAX ;
 int DAC_ERR_STR_CHANNEL_ERROR ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,int ,int ) ;
 int dac_pad_get_io_num (scalar_t__,int *) ;
 int rtc_gpio_init (int ) ;
 int rtc_gpio_input_disable (int ) ;
 int rtc_gpio_output_disable (int ) ;
 int rtc_gpio_pulldown_dis (int ) ;
 int rtc_gpio_pullup_dis (int ) ;

__attribute__((used)) static esp_err_t dac_rtc_pad_init(dac_channel_t channel)
{
    RTC_MODULE_CHECK((channel >= DAC_CHANNEL_1) && (channel < DAC_CHANNEL_MAX), DAC_ERR_STR_CHANNEL_ERROR, ESP_ERR_INVALID_ARG);
    gpio_num_t gpio_num = 0;
    dac_pad_get_io_num(channel, &gpio_num);
    rtc_gpio_init(gpio_num);
    rtc_gpio_output_disable(gpio_num);
    rtc_gpio_input_disable(gpio_num);
    rtc_gpio_pullup_dis(gpio_num);
    rtc_gpio_pulldown_dis(gpio_num);

    return ESP_OK;
}
