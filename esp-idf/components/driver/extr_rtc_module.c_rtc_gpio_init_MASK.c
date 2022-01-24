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
struct TYPE_4__ {int /*<<< orphan*/  func; int /*<<< orphan*/  reg; int /*<<< orphan*/  mux; } ;
struct TYPE_3__ {int mux_sel; int fun_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  RTC_IO_TOUCH_PAD1_FUN_SEL_V ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* rtc_gpio_desc ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 TYPE_1__** rtc_gpio_reg ; 
 int /*<<< orphan*/  rtc_spinlock ; 

esp_err_t FUNC6(gpio_num_t gpio_num)
{
    FUNC0(FUNC5(gpio_num), "RTC_GPIO number error", ESP_ERR_INVALID_ARG);
    FUNC3(&rtc_spinlock);
#if CONFIG_IDF_TARGET_ESP32
    // 0: GPIO connected to digital GPIO module. 1: GPIO connected to analog RTC module.
    SET_PERI_REG_MASK(rtc_gpio_desc[gpio_num].reg, (rtc_gpio_desc[gpio_num].mux));
    //0:RTC FUNCIOTN 1,2,3:Reserved
    SET_PERI_REG_BITS(rtc_gpio_desc[gpio_num].reg, RTC_IO_TOUCH_PAD1_FUN_SEL_V, 0x0, rtc_gpio_desc[gpio_num].func);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    rtc_gpio_reg[gpio_num]->mux_sel = 0x1;
    rtc_gpio_reg[gpio_num]->fun_sel = 0x0;
#endif
    FUNC4(&rtc_spinlock);

    return ESP_OK;
}