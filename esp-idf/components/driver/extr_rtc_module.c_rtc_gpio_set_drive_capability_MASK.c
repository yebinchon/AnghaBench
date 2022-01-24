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
typedef  scalar_t__ gpio_drive_cap_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {int /*<<< orphan*/  drv_s; int /*<<< orphan*/  drv_v; int /*<<< orphan*/  reg; } ;
struct TYPE_3__ {scalar_t__ drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ GPIO_DRIVE_CAP_MAX ; 
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* rtc_gpio_desc ; 
 int FUNC5 (size_t) ; 
 TYPE_1__** rtc_gpio_reg ; 
 int /*<<< orphan*/  rtc_spinlock ; 

esp_err_t FUNC6(gpio_num_t gpio_num, gpio_drive_cap_t strength)
{
    FUNC1(FUNC5(gpio_num), "RTC_GPIO number error", ESP_ERR_INVALID_ARG);
    FUNC1(FUNC0(gpio_num), "Output pad only", ESP_ERR_INVALID_ARG);
    FUNC1(strength < GPIO_DRIVE_CAP_MAX, "GPIO drive capability error", ESP_ERR_INVALID_ARG);

    FUNC3(&rtc_spinlock);
#if CONFIG_IDF_TARGET_ESP32
    SET_PERI_REG_BITS(rtc_gpio_desc[gpio_num].reg, rtc_gpio_desc[gpio_num].drv_v, strength, rtc_gpio_desc[gpio_num].drv_s);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    rtc_gpio_reg[gpio_num]->drv = strength;
#endif
    FUNC4(&rtc_spinlock);
    return ESP_OK;
}