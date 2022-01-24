#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  deadline; int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  cpu_subtype; int /*<<< orphan*/  cpu_type; TYPE_1__ rtclock_timer; } ;
typedef  TYPE_2__ cpu_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  EndOfAllTime ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void)
{
	cpu_data_t	*cdp = FUNC2();

	FUNC4(&cdp->rtclock_timer.queue);
	cdp->rtclock_timer.deadline = EndOfAllTime;

	cdp->cpu_type = FUNC1();
	cdp->cpu_subtype = FUNC0();

	FUNC3();
}