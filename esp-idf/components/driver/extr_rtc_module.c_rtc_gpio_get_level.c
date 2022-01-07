
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t gpio_num_t ;
struct TYPE_4__ {int in; } ;
struct TYPE_6__ {TYPE_1__ in_val; } ;
struct TYPE_5__ {int rtc_num; } ;


 int ESP_ERR_INVALID_ARG ;
 int READ_PERI_REG (int ) ;
 TYPE_3__ RTCIO ;
 int RTC_GPIO_IN_NEXT_S ;
 int RTC_GPIO_IN_REG ;
 int RTC_MODULE_CHECK (int ,char*,int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 TYPE_2__* rtc_gpio_desc ;
 int rtc_gpio_is_valid_gpio (size_t) ;
 int rtc_spinlock ;

uint32_t rtc_gpio_get_level(gpio_num_t gpio_num)
{
    uint32_t level = 0;
}
