
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ esp_sleep_source_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int wakeup_triggers; scalar_t__ ext1_trigger_mode; scalar_t__ ext1_rtc_gpio_mask; scalar_t__ ext0_trigger_level; scalar_t__ ext0_rtc_gpio_num; scalar_t__ sleep_duration; } ;


 scalar_t__ CHECK_SOURCE (scalar_t__,int ,int) ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 scalar_t__ ESP_SLEEP_WAKEUP_ALL ;
 int ESP_SLEEP_WAKEUP_EXT0 ;
 int ESP_SLEEP_WAKEUP_EXT1 ;
 int ESP_SLEEP_WAKEUP_GPIO ;
 int ESP_SLEEP_WAKEUP_TIMER ;
 int ESP_SLEEP_WAKEUP_TOUCHPAD ;
 int ESP_SLEEP_WAKEUP_UART ;
 int ESP_SLEEP_WAKEUP_ULP ;
 int RTC_EXT0_TRIG_EN ;
 int RTC_EXT1_TRIG_EN ;
 int RTC_GPIO_TRIG_EN ;
 int RTC_TIMER_TRIG_EN ;
 int RTC_TOUCH_TRIG_EN ;
 int RTC_UART0_TRIG_EN ;
 int RTC_UART1_TRIG_EN ;
 int RTC_ULP_TRIG_EN ;
 int TAG ;
 TYPE_1__ s_config ;

esp_err_t esp_sleep_disable_wakeup_source(esp_sleep_source_t source)
{



    if (source == ESP_SLEEP_WAKEUP_ALL) {
        s_config.wakeup_triggers = 0;
    } else if (CHECK_SOURCE(source, ESP_SLEEP_WAKEUP_TIMER, RTC_TIMER_TRIG_EN)) {
        s_config.wakeup_triggers &= ~RTC_TIMER_TRIG_EN;
        s_config.sleep_duration = 0;
    } else if (CHECK_SOURCE(source, ESP_SLEEP_WAKEUP_EXT0, RTC_EXT0_TRIG_EN)) {
        s_config.ext0_rtc_gpio_num = 0;
        s_config.ext0_trigger_level = 0;
        s_config.wakeup_triggers &= ~RTC_EXT0_TRIG_EN;
    } else if (CHECK_SOURCE(source, ESP_SLEEP_WAKEUP_EXT1, RTC_EXT1_TRIG_EN)) {
        s_config.ext1_rtc_gpio_mask = 0;
        s_config.ext1_trigger_mode = 0;
        s_config.wakeup_triggers &= ~RTC_EXT1_TRIG_EN;
    } else if (CHECK_SOURCE(source, ESP_SLEEP_WAKEUP_TOUCHPAD, RTC_TOUCH_TRIG_EN)) {
        s_config.wakeup_triggers &= ~RTC_TOUCH_TRIG_EN;
    } else if (CHECK_SOURCE(source, ESP_SLEEP_WAKEUP_GPIO, RTC_GPIO_TRIG_EN)) {
        s_config.wakeup_triggers &= ~RTC_GPIO_TRIG_EN;
    } else if (CHECK_SOURCE(source, ESP_SLEEP_WAKEUP_UART, (RTC_UART0_TRIG_EN | RTC_UART1_TRIG_EN))) {
        s_config.wakeup_triggers &= ~(RTC_UART0_TRIG_EN | RTC_UART1_TRIG_EN);
    }





    else {
        ESP_LOGE(TAG, "Incorrect wakeup source (%d) to disable.", (int) source);
        return ESP_ERR_INVALID_STATE;
    }
    return ESP_OK;
}
