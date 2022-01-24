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
 int TG0_WDT_TICK_US ; 
 int /*<<< orphan*/  TIMERG0 ; 
 int /*<<< orphan*/  TIMERG1 ; 
 int /*<<< orphan*/  TIMER_WDT_RESET_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
    FUNC3(&TIMERG0, false);
    FUNC0(&TIMERG0);
    FUNC1(&TIMERG0);
    FUNC4(&TIMERG0, TG0_WDT_TICK_US); //Prescaler: wdt counts in ticks of TG0_WDT_TICK_US
    //1st stage timeout: reset system
    FUNC6(&TIMERG0, 0, TIMER_WDT_RESET_SYSTEM);
    //1 second before reset
    FUNC5(&TIMERG0, 0, 1000*1000/TG0_WDT_TICK_US);
    FUNC2(&TIMERG0, true);
    FUNC3(&TIMERG0, true);

    //Disable wdt 1
    FUNC3(&TIMERG1, false);
    FUNC2(&TIMERG1, false);
    FUNC3(&TIMERG1, true);
}