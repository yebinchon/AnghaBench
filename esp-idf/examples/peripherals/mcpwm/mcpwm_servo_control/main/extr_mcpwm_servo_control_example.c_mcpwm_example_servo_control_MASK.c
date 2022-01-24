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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int frequency; int /*<<< orphan*/  duty_mode; int /*<<< orphan*/  counter_mode; scalar_t__ cmpr_b; scalar_t__ cmpr_a; } ;
typedef  TYPE_1__ mcpwm_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  MCPWM_DUTY_MODE_0 ; 
 int /*<<< orphan*/  MCPWM_OPR_A ; 
 int /*<<< orphan*/  MCPWM_TIMER_0 ; 
 int /*<<< orphan*/  MCPWM_UNIT_0 ; 
 int /*<<< orphan*/  MCPWM_UP_COUNTER ; 
 scalar_t__ SERVO_MAX_DEGREE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(void *arg)
{
    uint32_t angle, count;
    //1. mcpwm gpio initialization
    FUNC0();

    //2. initial mcpwm configuration
    FUNC3("Configuring Initial Parameters of mcpwm......\n");
    mcpwm_config_t pwm_config;
    pwm_config.frequency = 50;    //frequency = 50Hz, i.e. for every servo motor time period should be 20ms
    pwm_config.cmpr_a = 0;    //duty cycle of PWMxA = 0
    pwm_config.cmpr_b = 0;    //duty cycle of PWMxb = 0
    pwm_config.counter_mode = MCPWM_UP_COUNTER;
    pwm_config.duty_mode = MCPWM_DUTY_MODE_0;
    FUNC1(MCPWM_UNIT_0, MCPWM_TIMER_0, &pwm_config);    //Configure PWM0A & PWM0B with above settings
    while (1) {
        for (count = 0; count < SERVO_MAX_DEGREE; count++) {
            FUNC3("Angle of rotation: %d\n", count);
            angle = FUNC4(count);
            FUNC3("pulse width: %dus\n", angle);
            FUNC2(MCPWM_UNIT_0, MCPWM_TIMER_0, MCPWM_OPR_A, angle);
            FUNC5(10);     //Add delay, since it takes time for servo to rotate, generally 100ms/60degree rotation at 5V
        }
    }
}