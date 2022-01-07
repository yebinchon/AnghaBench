
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ touch_pad_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_GPIO_MODE_DISABLED ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 scalar_t__ TOUCH_DENOISE_CHANNEL ;
 int rtc_gpio_init (scalar_t__) ;
 int rtc_gpio_pulldown_dis (scalar_t__) ;
 int rtc_gpio_pullup_dis (scalar_t__) ;
 int rtc_gpio_set_direction (scalar_t__,int ) ;

esp_err_t touch_pad_io_init(touch_pad_t touch_num)
{
    RTC_MODULE_CHECK(touch_num != TOUCH_DENOISE_CHANNEL,
                    "please use `touch_pad_denoise_enable` to set denoise channel", ESP_ERR_INVALID_ARG);
    rtc_gpio_init(touch_num);
    rtc_gpio_set_direction(touch_num, RTC_GPIO_MODE_DISABLED);
    rtc_gpio_pulldown_dis(touch_num);
    rtc_gpio_pullup_dis(touch_num);
    return ESP_OK;
}
