#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t gpio_num_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {int /*<<< orphan*/  ie; int /*<<< orphan*/  reg; } ;
struct TYPE_3__ {scalar_t__ fun_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* rtc_gpio_desc ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 TYPE_1__** rtc_gpio_reg ; 
 int /*<<< orphan*/  rtc_spinlock ; 

__attribute__((used)) static esp_err_t FUNC5(gpio_num_t gpio_num)
{
    FUNC1(FUNC4(gpio_num), "RTC_GPIO number error", ESP_ERR_INVALID_ARG);
    FUNC2(&rtc_spinlock);
#if CONFIG_IDF_TARGET_ESP32
    CLEAR_PERI_REG_MASK(rtc_gpio_desc[gpio_num].reg, rtc_gpio_desc[gpio_num].ie);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    rtc_gpio_reg[gpio_num]->fun_ie = 0;
#endif
    FUNC3(&rtc_spinlock);

    return ESP_OK;
}