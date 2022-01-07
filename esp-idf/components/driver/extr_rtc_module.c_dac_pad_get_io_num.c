
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_num_t ;
typedef int esp_err_t ;
typedef int dac_channel_t ;



 int DAC_CHANNEL_1_GPIO_NUM ;

 int DAC_CHANNEL_2_GPIO_NUM ;
 int DAC_CHANNEL_MAX ;
 int DAC_ERR_STR_CHANNEL_ERROR ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;

esp_err_t dac_pad_get_io_num(dac_channel_t channel, gpio_num_t *gpio_num)
{
    RTC_MODULE_CHECK((channel >= 129) && (channel < DAC_CHANNEL_MAX), DAC_ERR_STR_CHANNEL_ERROR, ESP_ERR_INVALID_ARG);
    RTC_MODULE_CHECK(gpio_num, "Param null", ESP_ERR_INVALID_ARG);

    switch (channel) {
    case 129:
        *gpio_num = DAC_CHANNEL_1_GPIO_NUM;
        break;
    case 128:
        *gpio_num = DAC_CHANNEL_2_GPIO_NUM;
        break;
    default:
        return ESP_ERR_INVALID_ARG;
    }

    return ESP_OK;
}
