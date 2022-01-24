#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int rtc_num; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ ESP_SLEEP_WAKEUP_EXT1 ; 
 int GPIO_PIN_COUNT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_EXT_WAKEUP1_STATUS ; 
 int /*<<< orphan*/  RTC_CNTL_EXT_WAKEUP1_STATUS_REG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 TYPE_1__* rtc_gpio_desc ; 

uint64_t FUNC4(void)
{
    if (FUNC3() != ESP_SLEEP_WAKEUP_EXT1) {
        return 0;
    }
    uint32_t status = FUNC1(RTC_CNTL_EXT_WAKEUP1_STATUS_REG, RTC_CNTL_EXT_WAKEUP1_STATUS);
    // Translate bit map of RTC IO numbers into the bit map of GPIO numbers
    uint64_t gpio_mask = 0;
    for (int gpio = 0; gpio < GPIO_PIN_COUNT; ++gpio) {
        if (!FUNC2(gpio)) {
            continue;
        }
        int rtc_pin = rtc_gpio_desc[gpio].rtc_num;
        if ((status & FUNC0(rtc_pin)) == 0) {
            continue;
        }
        gpio_mask |= 1ULL << gpio;
    }
    return gpio_mask;
}