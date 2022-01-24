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
typedef  int /*<<< orphan*/  mcpwm_unit_t ;
typedef  int /*<<< orphan*/  mcpwm_timer_t ;
typedef  int /*<<< orphan*/  mcpwm_io_signals_t ;

/* Variables and functions */
 int INITIAL_DUTY ; 
 int /*<<< orphan*/  MCPWM_DUTY_MODE_0 ; 
 int /*<<< orphan*/  MCPWM_OPR_A ; 
 int /*<<< orphan*/  MCPWM_OPR_B ; 
 int /*<<< orphan*/  FUNC0 (double,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC7 (char*,double) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(mcpwm_unit_t unit, mcpwm_io_signals_t mcpwm_a, mcpwm_io_signals_t mcpwm_b, mcpwm_timer_t timer)
{
    FUNC2(unit, mcpwm_a, mcpwm_b, timer);
    FUNC8(1000 / portTICK_RATE_MS); // stay this status for a while so that can view its waveform by logic anylyzer

    FUNC1(FUNC4(unit, timer, MCPWM_OPR_A, (INITIAL_DUTY * 1)));
    FUNC1(FUNC4(unit, timer, MCPWM_OPR_B, (INITIAL_DUTY * 2)));

    FUNC0(FUNC3(unit, timer, MCPWM_OPR_A), INITIAL_DUTY * 1);
    FUNC0(FUNC3(unit, timer, MCPWM_OPR_B), INITIAL_DUTY * 2);
    FUNC8(1000 / portTICK_RATE_MS);  // stay this status for a while so that can view its waveform by logic anylyzer

    FUNC4(unit, timer, MCPWM_OPR_A, 55.5f);
    FUNC6(unit, timer, MCPWM_OPR_A, MCPWM_DUTY_MODE_0);
    FUNC7("mcpwm check = %f\n", FUNC3(unit, timer, MCPWM_OPR_A));

    FUNC5(unit, timer, MCPWM_OPR_B, 500);
    FUNC7("mcpwm check = %f\n", FUNC3(unit, timer, MCPWM_OPR_B));
    FUNC8(1000 / portTICK_RATE_MS);  // stay this status for a while so that can view its waveform by logic anylyzer
}