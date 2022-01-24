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
typedef  int /*<<< orphan*/  spl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ kProgressMeterKernel ; 
 int kProgressMeterMax ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vc_progress_lock ; 
 scalar_t__ vc_progressmeter_enable ; 

void
FUNC5(int new_value)
{
    spl_t s;

    s = FUNC3();
    FUNC1(&vc_progress_lock);

    if (vc_progressmeter_enable && (kProgressMeterKernel != vc_progressmeter_enable))
    {
	FUNC0((new_value * kProgressMeterMax) / 100);
    }

    FUNC2(&vc_progress_lock);
    FUNC4(s);
}