
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int val; } ;
struct TYPE_6__ {TYPE_1__ pad_hold; } ;
struct TYPE_5__ {scalar_t__ pullup; int hold; int reg; } ;


 int BIT (size_t) ;
 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__ RTCCNTL ;
 int RTC_MODULE_CHECK (int ,char*,int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 TYPE_2__* rtc_gpio_desc ;
 int rtc_gpio_is_valid_gpio (size_t) ;
 int rtc_spinlock ;

esp_err_t rtc_gpio_hold_dis(gpio_num_t gpio_num)
{
    return ESP_OK;
}
