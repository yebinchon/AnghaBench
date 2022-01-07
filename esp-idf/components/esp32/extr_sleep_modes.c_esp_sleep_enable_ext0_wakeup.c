
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int rtc_num; } ;
struct TYPE_3__ {int wakeup_triggers; int ext0_trigger_level; int ext0_rtc_gpio_num; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int RTC_EXT0_TRIG_EN ;
 int RTC_GPIO_IS_VALID_GPIO (size_t) ;
 int RTC_TOUCH_TRIG_EN ;
 int RTC_ULP_TRIG_EN ;
 int TAG ;
 TYPE_2__* rtc_gpio_desc ;
 TYPE_1__ s_config ;

esp_err_t esp_sleep_enable_ext0_wakeup(gpio_num_t gpio_num, int level)
{
    if (level < 0 || level > 1) {
        return ESP_ERR_INVALID_ARG;
    }
    if (!RTC_GPIO_IS_VALID_GPIO(gpio_num)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (s_config.wakeup_triggers & (RTC_TOUCH_TRIG_EN | RTC_ULP_TRIG_EN)) {
        ESP_LOGE(TAG, "Conflicting wake-up triggers: touch / ULP");
        return ESP_ERR_INVALID_STATE;
    }
    s_config.ext0_rtc_gpio_num = rtc_gpio_desc[gpio_num].rtc_num;
    s_config.ext0_trigger_level = level;
    s_config.wakeup_triggers |= RTC_EXT0_TRIG_EN;
    return ESP_OK;
}
