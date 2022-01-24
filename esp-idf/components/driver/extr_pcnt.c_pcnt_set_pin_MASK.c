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
typedef  int pcnt_unit_t ;
typedef  scalar_t__ pcnt_channel_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT ; 
 int /*<<< orphan*/ * GPIO_PIN_MUX_REG ; 
 int /*<<< orphan*/  GPIO_PULLUP_ONLY ; 
 int /*<<< orphan*/  PCNT_CHANNEL_ERR_STR ; 
 scalar_t__ PCNT_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCNT_CTRL_CH0_IN0_IDX ; 
 int PCNT_CTRL_CH1_IN0_IDX ; 
 int /*<<< orphan*/  PCNT_GPIO_ERR_STR ; 
 int PCNT_SIG_CH0_IN0_IDX ; 
 int PCNT_SIG_CH1_IN0_IDX ; 
 int /*<<< orphan*/  PCNT_UNIT_ERR_STR ; 
 int PCNT_UNIT_MAX ; 
 int /*<<< orphan*/  PIN_FUNC_GPIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

esp_err_t FUNC6(pcnt_unit_t unit, pcnt_channel_t channel, int pulse_io, int ctrl_io)
{
    FUNC1(unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    FUNC1(channel < PCNT_CHANNEL_MAX, PCNT_CHANNEL_ERR_STR, ESP_ERR_INVALID_ARG);
    FUNC1(FUNC0(pulse_io) || pulse_io < 0, PCNT_GPIO_ERR_STR, ESP_ERR_INVALID_ARG);
    FUNC1(FUNC0(ctrl_io) || ctrl_io < 0, PCNT_GPIO_ERR_STR, ESP_ERR_INVALID_ARG);

    int sig_base  = (channel == 0) ? PCNT_SIG_CH0_IN0_IDX  : PCNT_SIG_CH1_IN0_IDX;
    int ctrl_base = (channel == 0) ? PCNT_CTRL_CH0_IN0_IDX : PCNT_CTRL_CH1_IN0_IDX;
    if (unit > 4) {
        sig_base  += 12; // GPIO matrix assignments have a gap between units 4 & 5
        ctrl_base += 12;
    }
    int input_sig_index = sig_base  + (4 * unit);
    int ctrl_sig_index  = ctrl_base + (4 * unit);

    if(pulse_io >= 0) {
        FUNC2(GPIO_PIN_MUX_REG[pulse_io], PIN_FUNC_GPIO);
        FUNC4(pulse_io, GPIO_MODE_INPUT);
        FUNC5(pulse_io, GPIO_PULLUP_ONLY);
        FUNC3(pulse_io, input_sig_index, 0);
    }
    if(ctrl_io >= 0) {
        FUNC2(GPIO_PIN_MUX_REG[ctrl_io], PIN_FUNC_GPIO);
        FUNC4(ctrl_io, GPIO_MODE_INPUT);
        FUNC5(ctrl_io, GPIO_PULLUP_ONLY);
        FUNC3(ctrl_io, ctrl_sig_index, 0);
    }
    return ESP_OK;
}