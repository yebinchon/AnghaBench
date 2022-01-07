
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_1__* pin; } ;
struct TYPE_5__ {int rtc_num; } ;
struct TYPE_4__ {scalar_t__ int_type; scalar_t__ wakeup_enable; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int REG_CLR_BIT (scalar_t__,int ) ;
 int REG_SET_FIELD (scalar_t__,int ,int ) ;
 TYPE_3__ RTCIO ;
 int RTC_GPIO_PIN0_INT_TYPE ;
 scalar_t__ RTC_GPIO_PIN0_REG ;
 int RTC_GPIO_PIN0_WAKEUP_ENABLE ;
 int RTC_MODULE_CHECK (int ,char*,int ) ;
 TYPE_2__* rtc_gpio_desc ;
 int rtc_gpio_is_valid_gpio (size_t) ;

esp_err_t rtc_gpio_wakeup_disable(gpio_num_t gpio_num)
{
    return ESP_OK;
}
