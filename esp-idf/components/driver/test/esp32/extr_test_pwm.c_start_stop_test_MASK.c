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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(mcpwm_unit_t unit, mcpwm_io_signals_t mcpwm_a, mcpwm_io_signals_t mcpwm_b, mcpwm_timer_t timer)
{
    FUNC2(unit, mcpwm_a, mcpwm_b, timer);
    FUNC1(2, 1000);
    FUNC0(FUNC4(unit, timer));
    FUNC5(10 / portTICK_RATE_MS); // wait for a while, stop totally
    FUNC1(0, 0);
    FUNC0(FUNC3(unit, timer));
    FUNC5(10 / portTICK_RATE_MS); // wait for a while, start totally
    FUNC1(2, 1000);
}