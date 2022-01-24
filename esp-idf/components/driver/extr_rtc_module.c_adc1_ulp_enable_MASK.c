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
 int /*<<< orphan*/  ADC_CTRL_ULP ; 
 int /*<<< orphan*/  ADC_UNIT_1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_spinlock ; 

void FUNC6(void)
{
    FUNC2();

    FUNC4(&rtc_spinlock);
    FUNC3( ADC_UNIT_1, ADC_CTRL_ULP );
    // since most users do not need LNA and HALL with uLP, we disable them here
    // open them in the uLP if needed.
    FUNC0();
    FUNC1(false);
    FUNC5(&rtc_spinlock);
}