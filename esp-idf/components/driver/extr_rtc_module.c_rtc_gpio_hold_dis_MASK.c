#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t gpio_num_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
struct TYPE_6__ {TYPE_1__ pad_hold; } ;
struct TYPE_5__ {scalar_t__ pullup; int /*<<< orphan*/  hold; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_3__ RTCCNTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* rtc_gpio_desc ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  rtc_spinlock ; 

esp_err_t FUNC6(gpio_num_t gpio_num)
{
#if CONFIG_IDF_TARGET_ESP32
    // check if an RTC IO
    if (rtc_gpio_desc[gpio_num].pullup == 0) {
        return ESP_ERR_INVALID_ARG;
    }
    portENTER_CRITICAL(&rtc_spinlock);
    CLEAR_PERI_REG_MASK(rtc_gpio_desc[gpio_num].reg, rtc_gpio_desc[gpio_num].hold);
    portEXIT_CRITICAL(&rtc_spinlock);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    RTC_MODULE_CHECK(rtc_gpio_is_valid_gpio(gpio_num), "RTC_GPIO number error", ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&rtc_spinlock);
    RTCCNTL.pad_hold.val &= ~(BIT(gpio_num));
    portEXIT_CRITICAL(&rtc_spinlock);
#endif
    return ESP_OK;
}