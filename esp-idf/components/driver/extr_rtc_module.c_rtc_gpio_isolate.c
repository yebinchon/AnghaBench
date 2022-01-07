
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_2__ {scalar_t__ reg; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_GPIO_MODE_DISABLED ;
 int RTC_MODULE_CHECK (int ,char*,int ) ;
 TYPE_1__* rtc_gpio_desc ;
 int rtc_gpio_hold_en (size_t) ;
 int rtc_gpio_is_valid_gpio (size_t) ;
 int rtc_gpio_pulldown_dis (size_t) ;
 int rtc_gpio_pullup_dis (size_t) ;
 int rtc_gpio_set_direction (size_t,int ) ;

esp_err_t rtc_gpio_isolate(gpio_num_t gpio_num)
{







    rtc_gpio_pullup_dis(gpio_num);
    rtc_gpio_pulldown_dis(gpio_num);
    rtc_gpio_set_direction(gpio_num, RTC_GPIO_MODE_DISABLED);
    rtc_gpio_hold_en(gpio_num);

    return ESP_OK;
}
