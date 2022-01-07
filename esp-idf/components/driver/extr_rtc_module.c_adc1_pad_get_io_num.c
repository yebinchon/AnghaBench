
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_num_t ;
typedef int esp_err_t ;
typedef int adc1_channel_t ;



 int ADC1_CHANNEL_0_GPIO_NUM ;

 int ADC1_CHANNEL_1_GPIO_NUM ;

 int ADC1_CHANNEL_2_GPIO_NUM ;

 int ADC1_CHANNEL_3_GPIO_NUM ;

 int ADC1_CHANNEL_4_GPIO_NUM ;

 int ADC1_CHANNEL_5_GPIO_NUM ;

 int ADC1_CHANNEL_6_GPIO_NUM ;

 int ADC1_CHANNEL_7_GPIO_NUM ;
 int ADC1_CHANNEL_MAX ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;

esp_err_t adc1_pad_get_io_num(adc1_channel_t channel, gpio_num_t *gpio_num)
{
    RTC_MODULE_CHECK(channel < ADC1_CHANNEL_MAX, "ADC1 Channel Err", ESP_ERR_INVALID_ARG);

    switch (channel) {
    case 135:
        *gpio_num = ADC1_CHANNEL_0_GPIO_NUM;
        break;
    case 134:
        *gpio_num = ADC1_CHANNEL_1_GPIO_NUM;
        break;
    case 133:
        *gpio_num = ADC1_CHANNEL_2_GPIO_NUM;
        break;
    case 132:
        *gpio_num = ADC1_CHANNEL_3_GPIO_NUM;
        break;
    case 131:
        *gpio_num = ADC1_CHANNEL_4_GPIO_NUM;
        break;
    case 130:
        *gpio_num = ADC1_CHANNEL_5_GPIO_NUM;
        break;
    case 129:
        *gpio_num = ADC1_CHANNEL_6_GPIO_NUM;
        break;
    case 128:
        *gpio_num = ADC1_CHANNEL_7_GPIO_NUM;
        break;
    default:
        return ESP_ERR_INVALID_ARG;
    }

    return ESP_OK;
}
