#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  queue; } ;
struct TYPE_7__ {scalar_t__ cpu_signals; TYPE_1__ rtclock_timer; int /*<<< orphan*/  cpu_running; } ;
typedef  TYPE_2__ cpu_data_t ;
struct TYPE_8__ {scalar_t__ rtcDeadline; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 scalar_t__ EndOfAllTime ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRACE_MP_CPU_DEACTIVATE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  master_cpu ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_queue_expire_local ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC15 () ; 
 int /*<<< orphan*/  x86_topo_lock ; 

void
FUNC16(void)
{
	cpu_data_t	*cdp = FUNC4();

	FUNC1(!FUNC5());
 
	FUNC0(
		TRACE_MP_CPU_DEACTIVATE | DBG_FUNC_START,
		0, 0, 0, 0, 0);

	FUNC10(&x86_topo_lock);
	cdp->cpu_running = FALSE;
	FUNC13(&x86_topo_lock);

	/*
	 * Move all of this cpu's timers to the master/boot cpu,
	 * and poke it in case there's a sooner deadline for it to schedule.
	 */
	FUNC14(&cdp->rtclock_timer.queue);
	FUNC7(FUNC3(master_cpu), ASYNC, timer_queue_expire_local, NULL);

#if MONOTONIC
	mt_cpu_down(cdp);
#endif /* MONOTONIC */

	/*
	 * Open an interrupt window
	 * and ensure any pending IPI or timer is serviced
	 */
	FUNC8();
	FUNC6(TRUE);

	while (cdp->cpu_signals && FUNC15()->rtcDeadline != EndOfAllTime)
		FUNC2();
	/*
	 * Ensure there's no remaining timer deadline set
	 * - AICPM may have left one active.
	 */
	FUNC12(0);

	FUNC6(FALSE);
	FUNC9();

	FUNC0(
		TRACE_MP_CPU_DEACTIVATE | DBG_FUNC_END,
		0, 0, 0, 0, 0);
}