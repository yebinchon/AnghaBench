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
typedef  int /*<<< orphan*/  gpio_drive_cap_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {int /*<<< orphan*/  drv_s; int /*<<< orphan*/  drv_v; int /*<<< orphan*/  reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* rtc_gpio_desc ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 TYPE_1__** rtc_gpio_reg ; 

esp_err_t FUNC4(gpio_num_t gpio_num, gpio_drive_cap_t* strength)
{
    FUNC2(FUNC3(gpio_num), "RTC_GPIO number error", ESP_ERR_INVALID_ARG);
    FUNC2(FUNC1(gpio_num), "Output pad only", ESP_ERR_INVALID_ARG);
    FUNC2(strength != NULL, "GPIO drive pointer error", ESP_ERR_INVALID_ARG);
#if CONFIG_IDF_TARGET_ESP32
    *strength = GET_PERI_REG_BITS2(rtc_gpio_desc[gpio_num].reg, rtc_gpio_desc[gpio_num].drv_v, rtc_gpio_desc[gpio_num].drv_s);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    *strength = rtc_gpio_reg[gpio_num]->drv;
#endif
    return ESP_OK;
}