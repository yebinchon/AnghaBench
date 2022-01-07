
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ esp_sleep_ext1_wakeup_mode_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int rtc_num; } ;
struct TYPE_3__ {int wakeup_triggers; scalar_t__ ext1_trigger_mode; int ext1_rtc_gpio_mask; } ;


 int BIT (int ) ;
 int ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_EXT1_WAKEUP_ANY_HIGH ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 int RTC_EXT1_TRIG_EN ;
 int RTC_GPIO_IS_VALID_GPIO (int) ;
 int TAG ;
 TYPE_2__* rtc_gpio_desc ;
 TYPE_1__ s_config ;

esp_err_t esp_sleep_enable_ext1_wakeup(uint64_t mask, esp_sleep_ext1_wakeup_mode_t mode)
{
    if (mode > ESP_EXT1_WAKEUP_ANY_HIGH) {
        return ESP_ERR_INVALID_ARG;
    }

    uint32_t rtc_gpio_mask = 0;
    for (int gpio = 0; mask; ++gpio, mask >>= 1) {
        if ((mask & 1) == 0) {
            continue;
        }
        if (!RTC_GPIO_IS_VALID_GPIO(gpio)) {
            ESP_LOGE(TAG, "Not an RTC IO: GPIO%d", gpio);
            return ESP_ERR_INVALID_ARG;
        }
        rtc_gpio_mask |= BIT(rtc_gpio_desc[gpio].rtc_num);
    }
    s_config.ext1_rtc_gpio_mask = rtc_gpio_mask;
    s_config.ext1_trigger_mode = mode;
    s_config.wakeup_triggers |= RTC_EXT1_TRIG_EN;
    return ESP_OK;
}
