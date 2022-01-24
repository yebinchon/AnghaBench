#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t gpio_num_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUN_PU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/ * GPIO_PIN_MUX_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 

esp_err_t FUNC5(gpio_num_t gpio_num)
{
    FUNC0(FUNC1(gpio_num), "GPIO number error", ESP_ERR_INVALID_ARG);
#if CONFIG_IDF_TARGET_ESP32
    if (RTC_GPIO_IS_VALID_GPIO(gpio_num)) {
        rtc_gpio_pullup_dis(gpio_num);
    } else {
        REG_CLR_BIT(GPIO_PIN_MUX_REG[gpio_num], FUN_PU);
    }
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    REG_CLR_BIT(GPIO_PIN_MUX_REG[gpio_num], FUN_PU);
#endif
    return ESP_OK;
}