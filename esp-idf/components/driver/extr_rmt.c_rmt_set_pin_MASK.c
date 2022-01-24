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
typedef  scalar_t__ rmt_mode_t ;
typedef  scalar_t__ rmt_channel_t ;
typedef  size_t gpio_num_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT ; 
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int /*<<< orphan*/ * GPIO_PIN_MUX_REG ; 
 int /*<<< orphan*/  PIN_FUNC_GPIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RMT_CHANNEL_ERROR_STR ; 
 scalar_t__ RMT_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RMT_GPIO_ERROR_STR ; 
 int /*<<< orphan*/  RMT_MODE_ERROR_STR ; 
 scalar_t__ RMT_MODE_MAX ; 
 scalar_t__ RMT_MODE_RX ; 
 scalar_t__ RMT_MODE_TX ; 
 scalar_t__ RMT_SIG_IN0_IDX ; 
 scalar_t__ RMT_SIG_OUT0_IDX ; 
 int /*<<< orphan*/  FUNC4 (size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ ) ; 

esp_err_t FUNC7(rmt_channel_t channel, rmt_mode_t mode, gpio_num_t gpio_num)
{
    FUNC3(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    FUNC3(mode < RMT_MODE_MAX, RMT_MODE_ERROR_STR, ESP_ERR_INVALID_ARG);
    FUNC3(((FUNC0(gpio_num) && (mode == RMT_MODE_RX)) || (FUNC1(gpio_num) && (mode == RMT_MODE_TX))),
        RMT_GPIO_ERROR_STR, ESP_ERR_INVALID_ARG);

    FUNC2(GPIO_PIN_MUX_REG[gpio_num], PIN_FUNC_GPIO);
    if(mode == RMT_MODE_TX) {
        FUNC6(gpio_num, GPIO_MODE_OUTPUT);
        FUNC5(gpio_num, RMT_SIG_OUT0_IDX + channel, 0, 0);
    } else {
        FUNC6(gpio_num, GPIO_MODE_INPUT);
        FUNC4(gpio_num, RMT_SIG_IN0_IDX + channel, 0);
    }
    return ESP_OK;
}