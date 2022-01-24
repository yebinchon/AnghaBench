#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int deadline; int /*<<< orphan*/  queue; } ;
struct TYPE_6__ {int cpu_number; TYPE_1__ rtclock_timer; } ;
typedef  TYPE_2__ cpu_data_t ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int DECR_TIMER_MIGRATE ; 
 int EndOfAllTime ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int) ; 
 TYPE_2__* FUNC3 () ; 
 int master_cpu ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

uint32_t
FUNC7(int target_cpu)
{
	cpu_data_t	*target_cdp = FUNC2(target_cpu);
	cpu_data_t	*cdp = FUNC3();
	int		ntimers_moved;

	FUNC1(!FUNC4());
	FUNC1(target_cpu != cdp->cpu_number);
	FUNC1(target_cpu == master_cpu);

	FUNC0(KDEBUG_TRACE,
		DECR_TIMER_MIGRATE | DBG_FUNC_START,
		target_cpu,
		cdp->rtclock_timer.deadline, (cdp->rtclock_timer.deadline >>32),
		0, 0);

	/*
	 * Move timer requests from the local queue to the target processor's.
	 * The return value is the number of requests moved. If this is 0,
	 * it indicates that the first (i.e. earliest) timer is earlier than
	 * the earliest for the target processor. Since this would force a
	 * resync, the move of this and all later requests is aborted.
	 */
	ntimers_moved = FUNC6(&cdp->rtclock_timer.queue,
					    &target_cdp->rtclock_timer.queue);

	/*
	 * Assuming we moved stuff, clear local deadline.
	 */
	if (ntimers_moved > 0) {
		cdp->rtclock_timer.deadline = EndOfAllTime;
		FUNC5(EndOfAllTime);
	}
 
	FUNC0(KDEBUG_TRACE,
		DECR_TIMER_MIGRATE | DBG_FUNC_END,
		target_cpu, ntimers_moved, 0, 0, 0);

	return ntimers_moved;
}