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
typedef  scalar_t__ mcpwm_unit_t ;
typedef  scalar_t__ mcpwm_io_signals_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT ; 
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int /*<<< orphan*/ * GPIO_PIN_MUX_REG ; 
 scalar_t__ MCPWM2B ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MCPWM_FAULT_2 ; 
 int /*<<< orphan*/  MCPWM_GPIO_ERROR ; 
 int MCPWM_PIN_IGNORE ; 
 scalar_t__ MCPWM_SYNC_0 ; 
 scalar_t__ MCPWM_UNIT_0 ; 
 scalar_t__ MCPWM_UNIT_MAX ; 
 int /*<<< orphan*/  MCPWM_UNIT_NUM_ERROR ; 
 scalar_t__ OFFSET_FOR_GPIO_IDX_1 ; 
 scalar_t__ OFFSET_FOR_GPIO_IDX_2 ; 
 scalar_t__ PERIPH_PWM0_MODULE ; 
 int /*<<< orphan*/  PIN_FUNC_GPIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PWM0_OUT0A_IDX ; 
 scalar_t__ PWM0_SYNC0_IN_IDX ; 
 scalar_t__ PWM1_OUT0A_IDX ; 
 scalar_t__ PWM1_SYNC0_IN_IDX ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

esp_err_t FUNC8(mcpwm_unit_t mcpwm_num, mcpwm_io_signals_t io_signal, int gpio_num)
{
    if (gpio_num == MCPWM_PIN_IGNORE) {
        //IGNORE
        return ESP_OK;
    }

    FUNC2(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    FUNC2((FUNC0(gpio_num)), MCPWM_GPIO_ERROR, ESP_ERR_INVALID_ARG);

    FUNC7(PERIPH_PWM0_MODULE + mcpwm_num);
    FUNC3(GPIO_PIN_MUX_REG[gpio_num], PIN_FUNC_GPIO);
    bool mcpwm_gpio_sig = (io_signal <= MCPWM2B);
    if (mcpwm_num == MCPWM_UNIT_0) {
        if (mcpwm_gpio_sig) {
            FUNC2((FUNC1(gpio_num)), MCPWM_GPIO_ERROR, ESP_ERR_INVALID_ARG);
            FUNC6(gpio_num, GPIO_MODE_OUTPUT);
            FUNC5(gpio_num, PWM0_OUT0A_IDX + io_signal, 0, 0);
        } else {
            FUNC6(gpio_num, GPIO_MODE_INPUT);
            FUNC4(gpio_num, PWM0_SYNC0_IN_IDX + io_signal - OFFSET_FOR_GPIO_IDX_1, 0);
        }
    } else { //MCPWM_UNIT_1
        if (mcpwm_gpio_sig) {
            FUNC2((FUNC1(gpio_num)), MCPWM_GPIO_ERROR, ESP_ERR_INVALID_ARG);
            FUNC6(gpio_num, GPIO_MODE_OUTPUT);
            FUNC5(gpio_num, PWM1_OUT0A_IDX + io_signal, 0, 0);
        } else if (io_signal >= MCPWM_SYNC_0 && io_signal < MCPWM_FAULT_2) {
            FUNC6(gpio_num, GPIO_MODE_INPUT);
            FUNC4(gpio_num, PWM1_SYNC0_IN_IDX + io_signal - OFFSET_FOR_GPIO_IDX_1, 0);
        } else {
            FUNC6(gpio_num, GPIO_MODE_INPUT);
            FUNC4(gpio_num, PWM1_SYNC0_IN_IDX + io_signal - OFFSET_FOR_GPIO_IDX_2, 0);
        }
    }
    return ESP_OK;
}