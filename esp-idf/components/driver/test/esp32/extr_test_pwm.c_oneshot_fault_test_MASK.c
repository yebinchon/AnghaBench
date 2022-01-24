#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mcpwm_unit_t ;
typedef  int /*<<< orphan*/  mcpwm_timer_t ;
typedef  int /*<<< orphan*/  mcpwm_io_signals_t ;
typedef  int /*<<< orphan*/  mcpwm_fault_signal_t ;
typedef  int mcpwm_fault_input_level_t ;
typedef  int /*<<< orphan*/  mcpwm_action_on_pwmxb_t ;
typedef  int /*<<< orphan*/  mcpwm_action_on_pwmxa_t ;
struct TYPE_3__ {int pin_bit_mask; int /*<<< orphan*/  mode; int /*<<< orphan*/  intr_type; } ;
typedef  TYPE_1__ gpio_config_t ;

/* Variables and functions */
 int FAULT_SIG_NUM ; 
 int /*<<< orphan*/  GPIO_FAULT_IN ; 
 int /*<<< orphan*/  GPIO_INTR_DISABLE ; 
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int /*<<< orphan*/  GPIO_PWMA_PCNT_INPUT ; 
 int /*<<< orphan*/  GPIO_PWMB_PCNT_INPUT ; 
 int /*<<< orphan*/  PCNT_CTRL_FLOATING_IO1 ; 
 int /*<<< orphan*/  PCNT_CTRL_FLOATING_IO2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(mcpwm_unit_t unit, mcpwm_io_signals_t mcpwm_a, mcpwm_io_signals_t mcpwm_b, mcpwm_timer_t timer,
        mcpwm_fault_signal_t fault_sig, mcpwm_fault_input_level_t input_sig, mcpwm_io_signals_t fault_io,
        mcpwm_action_on_pwmxa_t action_a, mcpwm_action_on_pwmxb_t action_b)
{
    gpio_config_t gp;
    gp.intr_type = GPIO_INTR_DISABLE;
    gp.mode = GPIO_MODE_OUTPUT;
    gp.pin_bit_mask = (1 << FAULT_SIG_NUM);
    FUNC2(&gp); // gpio configure should be more previous than mcpwm configuration
    FUNC3(FAULT_SIG_NUM, !input_sig);

    FUNC9(GPIO_PWMA_PCNT_INPUT, PCNT_CTRL_FLOATING_IO1);
    FUNC9(GPIO_PWMB_PCNT_INPUT, PCNT_CTRL_FLOATING_IO2);

    FUNC4(unit, mcpwm_a, mcpwm_b, timer);
    FUNC8(unit, fault_io, GPIO_FAULT_IN);

    // one shot mode, it just can be triggered once
    FUNC0(FUNC6(unit, input_sig, fault_sig));
    FUNC0(FUNC7(unit, timer, fault_sig, action_a, action_b));
    FUNC10(1000 / portTICK_RATE_MS);
    // trigger it
    FUNC3(FAULT_SIG_NUM, input_sig);
    FUNC10(1000 / portTICK_RATE_MS);
    FUNC1(input_sig, action_a, action_b, 1000, 5);
    FUNC0(FUNC5(unit, fault_sig));
}