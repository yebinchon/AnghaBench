
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int rtc_num; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_GPIO_OUT_DATA_W1TC_S ;
 int RTC_GPIO_OUT_DATA_W1TS_S ;
 int RTC_GPIO_OUT_W1TC_REG ;
 int RTC_GPIO_OUT_W1TS_REG ;
 int RTC_MODULE_CHECK (int ,char*,int ) ;
 int WRITE_PERI_REG (int ,int) ;
 TYPE_1__* rtc_gpio_desc ;
 int rtc_gpio_is_valid_gpio (size_t) ;
 int rtc_gpio_num ;

esp_err_t rtc_gpio_set_level(gpio_num_t gpio_num, uint32_t level)
{
    return ESP_OK;
}
