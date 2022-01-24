#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ earliest_soft_deadline; } ;
struct TYPE_8__ {scalar_t__ deadline; int has_expired; scalar_t__ when_set; TYPE_4__ queue; } ;
typedef  TYPE_1__ rtclock_timer_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_9__ {scalar_t__ quantum_timer_deadline; TYPE_1__ rtclock_timer; } ;
typedef  TYPE_2__ cpu_data_t ;
typedef  int boolean_t ;
struct TYPE_10__ {int /*<<< orphan*/  rtcDeadline; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_NONE ; 
 int DBG_FUNC_START ; 
 int DECR_PM_DEADLINE ; 
 int DECR_TRAP_LATENCY ; 
 int /*<<< orphan*/  EndOfAllTime ; 
 int FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  spurious_timers ; 
 scalar_t__ FUNC12 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_3__* FUNC14 () ; 

void
FUNC15(int		user_mode,
	    uint64_t	rip)
{
	uint64_t		abstime;
	rtclock_timer_t		*mytimer;
	cpu_data_t		*pp;
	int64_t			latency;
	uint64_t		pmdeadline;
	boolean_t		timer_processed = FALSE;

	pp = FUNC6();

	FUNC2(FUNC7());

	abstime = FUNC8();		/* Get the time now */

	/* has a pending clock timer expired? */
	mytimer = &pp->rtclock_timer;		/* Point to the event timer */

	if ((timer_processed = ((mytimer->deadline <= abstime) ||
		    (abstime >= (mytimer->queue.earliest_soft_deadline))))) {
		/*
		 * Log interrupt service latency (-ve value expected by tool)
		 * a non-PM event is expected next.
		 * The requested deadline may be earlier than when it was set 
		 * - use MAX to avoid reporting bogus latencies.
		 */
		latency = (int64_t) (abstime - FUNC1(mytimer->deadline,
						   mytimer->when_set));
		/* Log zero timer latencies when opportunistically processing
		 * coalesced timers.
		 */
		if (latency < 0) {
			FUNC3(0xEEEE0000, abstime, mytimer->queue.earliest_soft_deadline, abstime - mytimer->queue.earliest_soft_deadline, 0, 0);
			latency = 0;
		}

		FUNC0(KDEBUG_TRACE,
			DECR_TRAP_LATENCY | DBG_FUNC_NONE,
			-latency,
			((user_mode != 0) ? rip : FUNC4(rip)),
			user_mode, 0, 0);

		mytimer->has_expired = TRUE;	/* Remember that we popped */
		mytimer->deadline = FUNC12(&mytimer->queue, abstime);
		mytimer->has_expired = FALSE;

		/* Get the time again since we ran a bit */
		abstime = FUNC8();
		mytimer->when_set = abstime;
	}

	/* is it time for power management state change? */
	if ((pmdeadline = FUNC10(pp)) && (pmdeadline <= abstime)) {
		FUNC0(KDEBUG_TRACE,
			DECR_PM_DEADLINE | DBG_FUNC_START,
			0, 0, 0, 0, 0);
		FUNC9(pp);
		FUNC0(KDEBUG_TRACE,
			DECR_PM_DEADLINE | DBG_FUNC_END,
			0, 0, 0, 0, 0);
		timer_processed = TRUE;
		abstime = FUNC8(); /* Get the time again since we ran a bit */
	}

	uint64_t quantum_deadline = pp->quantum_timer_deadline;
	/* is it the quantum timer expiration? */
	if ((quantum_deadline <= abstime) && (quantum_deadline > 0)) {
		pp->quantum_timer_deadline = 0;
		FUNC11(abstime);
	}
	
	/* schedule our next deadline */
	FUNC14()->rtcDeadline = EndOfAllTime;
	FUNC13();

	if (FUNC5(timer_processed == FALSE))
		spurious_timers++;
}