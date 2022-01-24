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
struct TYPE_3__ {int frequency; int /*<<< orphan*/  duty_mode; int /*<<< orphan*/  counter_mode; scalar_t__ cmpr_b; scalar_t__ cmpr_a; } ;
typedef  TYPE_1__ mcpwm_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  MCPWM_DUTY_MODE_0 ; 
 int /*<<< orphan*/  MCPWM_TIMER_0 ; 
 int /*<<< orphan*/  MCPWM_UNIT_0 ; 
 int /*<<< orphan*/  MCPWM_UP_COUNTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void *arg)
{
    //1. mcpwm gpio initialization
    FUNC3();

    //2. initial mcpwm configuration
    FUNC5("Configuring Initial Parameters of mcpwm...\n");
    mcpwm_config_t pwm_config;
    pwm_config.frequency = 1000;    //frequency = 500Hz,
    pwm_config.cmpr_a = 0;    //duty cycle of PWMxA = 0
    pwm_config.cmpr_b = 0;    //duty cycle of PWMxb = 0
    pwm_config.counter_mode = MCPWM_UP_COUNTER;
    pwm_config.duty_mode = MCPWM_DUTY_MODE_0;
    FUNC4(MCPWM_UNIT_0, MCPWM_TIMER_0, &pwm_config);    //Configure PWM0A & PWM0B with above settings
    while (1) {
        FUNC1(MCPWM_UNIT_0, MCPWM_TIMER_0, 50.0);
        FUNC6(2000 / portTICK_RATE_MS);
        FUNC0(MCPWM_UNIT_0, MCPWM_TIMER_0, 30.0);
        FUNC6(2000 / portTICK_RATE_MS);
        FUNC2(MCPWM_UNIT_0, MCPWM_TIMER_0);
        FUNC6(2000 / portTICK_RATE_MS);
    }
}