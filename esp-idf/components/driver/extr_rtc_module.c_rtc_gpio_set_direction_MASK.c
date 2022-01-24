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
typedef  int rtc_gpio_mode_t ;
typedef  int /*<<< orphan*/  gpio_num_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
#define  RTC_GPIO_MODE_DISABLED 131 
#define  RTC_GPIO_MODE_INPUT_ONLY 130 
#define  RTC_GPIO_MODE_INPUT_OUTPUT 129 
#define  RTC_GPIO_MODE_OUTPUT_ONLY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC6(gpio_num_t gpio_num, rtc_gpio_mode_t mode)
{
    FUNC0(FUNC3(gpio_num), "RTC_GPIO number error", ESP_ERR_INVALID_ARG);

    switch (mode) {
    case RTC_GPIO_MODE_INPUT_ONLY:
        FUNC4(gpio_num);
        FUNC2(gpio_num);
        break;
    case RTC_GPIO_MODE_OUTPUT_ONLY:
        FUNC5(gpio_num);
        FUNC1(gpio_num);
        break;
    case RTC_GPIO_MODE_INPUT_OUTPUT:
        FUNC5(gpio_num);
        FUNC2(gpio_num);
        break;
    case RTC_GPIO_MODE_DISABLED:
        FUNC4(gpio_num);
        FUNC1(gpio_num);
        break;
    }

    return ESP_OK;
}