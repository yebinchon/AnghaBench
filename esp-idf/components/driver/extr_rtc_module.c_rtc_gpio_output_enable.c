
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int rtc_num; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_GPIO_ENABLE_W1TS_REG ;
 int RTC_GPIO_ENABLE_W1TS_S ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 int SET_PERI_REG_MASK (int ,int) ;
 TYPE_1__* rtc_gpio_desc ;
 int rtc_gpio_is_valid_gpio (size_t) ;

__attribute__((used)) static esp_err_t rtc_gpio_output_enable(gpio_num_t gpio_num)
{
    return ESP_OK;
}
