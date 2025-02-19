
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t gpio_num_t ;
typedef int gpio_drive_cap_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int drv_s; int drv_v; int reg; } ;
struct TYPE_3__ {int drv; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int GET_PERI_REG_BITS2 (int ,int ,int ) ;
 int GPIO_IS_VALID_OUTPUT_GPIO (size_t) ;
 int RTC_MODULE_CHECK (int ,char*,int ) ;
 TYPE_2__* rtc_gpio_desc ;
 int rtc_gpio_is_valid_gpio (size_t) ;
 TYPE_1__** rtc_gpio_reg ;

esp_err_t rtc_gpio_get_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t* strength)
{
    RTC_MODULE_CHECK(rtc_gpio_is_valid_gpio(gpio_num), "RTC_GPIO number error", ESP_ERR_INVALID_ARG);
    RTC_MODULE_CHECK(GPIO_IS_VALID_OUTPUT_GPIO(gpio_num), "Output pad only", ESP_ERR_INVALID_ARG);
    RTC_MODULE_CHECK(strength != ((void*)0), "GPIO drive pointer error", ESP_ERR_INVALID_ARG);





    return ESP_OK;
}
