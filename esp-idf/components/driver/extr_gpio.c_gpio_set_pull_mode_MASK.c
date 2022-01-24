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
typedef  int gpio_pull_mode_t ;
typedef  int /*<<< orphan*/  gpio_num_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
#define  GPIO_FLOATING 131 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  GPIO_PULLDOWN_ONLY 130 
#define  GPIO_PULLUP_ONLY 129 
#define  GPIO_PULLUP_PULLDOWN 128 
 int /*<<< orphan*/  GPIO_TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC7(gpio_num_t gpio_num, gpio_pull_mode_t pull)
{
    FUNC1(FUNC2(gpio_num), "GPIO number error", ESP_ERR_INVALID_ARG);
    FUNC1(pull <= GPIO_FLOATING, "GPIO pull mode error", ESP_ERR_INVALID_ARG);
    esp_err_t ret = ESP_OK;
    switch (pull) {
    case GPIO_PULLUP_ONLY:
        FUNC3(gpio_num);
        FUNC6(gpio_num);
        break;
    case GPIO_PULLDOWN_ONLY:
        FUNC4(gpio_num);
        FUNC5(gpio_num);
        break;
    case GPIO_PULLUP_PULLDOWN:
        FUNC4(gpio_num);
        FUNC6(gpio_num);
        break;
    case GPIO_FLOATING:
        FUNC3(gpio_num);
        FUNC5(gpio_num);
        break;
    default:
        FUNC0(GPIO_TAG, "Unknown pull up/down mode,gpio_num=%u,pull=%u", gpio_num, pull);
        ret = ESP_ERR_INVALID_ARG;
        break;
    }
    return ret;
}