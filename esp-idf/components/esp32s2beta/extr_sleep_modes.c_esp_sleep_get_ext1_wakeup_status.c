
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef int uint32_t ;


 int BIT (int) ;
 scalar_t__ ESP_SLEEP_WAKEUP_EXT1 ;
 int GPIO_PIN_COUNT ;
 int REG_GET_FIELD (int ,int ) ;
 int RTC_CNTL_EXT_WAKEUP1_STATUS ;
 int RTC_CNTL_EXT_WAKEUP1_STATUS_REG ;
 int RTC_GPIO_IS_VALID_GPIO (int) ;
 scalar_t__ esp_sleep_get_wakeup_cause () ;

uint64_t esp_sleep_get_ext1_wakeup_status(void)
{
    if (esp_sleep_get_wakeup_cause() != ESP_SLEEP_WAKEUP_EXT1) {
        return 0;
    }
    uint32_t status = REG_GET_FIELD(RTC_CNTL_EXT_WAKEUP1_STATUS_REG, RTC_CNTL_EXT_WAKEUP1_STATUS);

    uint64_t gpio_mask = 0;
    for (int gpio = 0; gpio < GPIO_PIN_COUNT; ++gpio) {
        if (!RTC_GPIO_IS_VALID_GPIO(gpio)) {
            continue;
        }
        int rtc_pin = gpio;
        if ((status & BIT(rtc_pin)) == 0) {
            continue;
        }
        gpio_mask |= 1ULL << gpio;
    }
    return gpio_mask;
}
