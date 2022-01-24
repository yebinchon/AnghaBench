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

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PWM0A_OUT ; 
 int /*<<< orphan*/  GPIO_PWM0B_OUT ; 
 int /*<<< orphan*/  MCPWM0A ; 
 int /*<<< orphan*/  MCPWM0B ; 
 int /*<<< orphan*/  MCPWM_UNIT_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC1("initializing mcpwm gpio...\n");
    FUNC0(MCPWM_UNIT_0, MCPWM0A, GPIO_PWM0A_OUT);
    FUNC0(MCPWM_UNIT_0, MCPWM0B, GPIO_PWM0B_OUT);
}