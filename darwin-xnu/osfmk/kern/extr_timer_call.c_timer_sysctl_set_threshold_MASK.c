#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ interval; int margin; scalar_t__ deadline_set; scalar_t__ deadline; scalar_t__ latency_max; int /*<<< orphan*/  latency_min; scalar_t__ latency; scalar_t__ preempts; scalar_t__ scans; int /*<<< orphan*/  timer; } ;
struct TYPE_7__ {TYPE_1__ threshold; scalar_t__ scan_pauses; scalar_t__ escalates; scalar_t__ dequeues; scalar_t__ enqueues; } ;
typedef  TYPE_2__ timer_longterm_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  EndOfAllTime ; 
 int FALSE ; 
 scalar_t__ NSEC_PER_MSEC ; 
 int TIMER_CALL_LOCAL ; 
 int TIMER_CALL_SYS_CRITICAL ; 
 scalar_t__ TIMER_LONGTERM_NONE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 TYPE_2__ timer_longterm ; 
 int /*<<< orphan*/  timer_longterm_queue ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(uint64_t value)
{
	timer_longterm_t	*tlp = &timer_longterm;
	spl_t			s = FUNC2();
	boolean_t		threshold_increase;

	FUNC8(timer_longterm_queue);

	FUNC4(&tlp->threshold.timer);

	/*
	 * Set the new threshold and note whther it's increasing.
	 */
	if (value == 0) {
		tlp->threshold.interval = TIMER_LONGTERM_NONE;
		threshold_increase = TRUE;
		FUNC4(&tlp->threshold.timer);
	} else {
		uint64_t	old_interval = tlp->threshold.interval;
		tlp->threshold.interval = value * NSEC_PER_MSEC;
		FUNC1(tlp->threshold.interval,
					    &tlp->threshold.interval);
		tlp->threshold.margin = tlp->threshold.interval / 10;
		if  (old_interval == TIMER_LONGTERM_NONE)
			threshold_increase = FALSE;
		else
			threshold_increase = (tlp->threshold.interval > old_interval);
	}

	if (threshold_increase /* or removal */) {
		/* Escalate timers from the longterm queue */
		FUNC6(tlp, FUNC0());
	} else /* decrease or addition  */ {
		/*
		 * We scan the local/master queue for timers now longterm.
		 * To be strictly correct, we should scan all processor queues
		 * but timer migration results in most timers gravitating to the
		 * master processor in any case.
		 */
		FUNC7(tlp, FUNC0());
	}

	/* Set new timer accordingly */
	tlp->threshold.deadline_set = tlp->threshold.deadline;
	if (tlp->threshold.deadline != TIMER_LONGTERM_NONE) {
		tlp->threshold.deadline_set -= tlp->threshold.margin;
		tlp->threshold.deadline_set -= tlp->threshold.latency;
		FUNC5(
			&tlp->threshold.timer,
			tlp->threshold.deadline_set,
			TIMER_CALL_LOCAL | TIMER_CALL_SYS_CRITICAL);
	}

	/* Reset stats */
	tlp->enqueues = 0;
	tlp->dequeues = 0;
	tlp->escalates = 0;
	tlp->scan_pauses = 0;
	tlp->threshold.scans = 0;
	tlp->threshold.preempts = 0;
	tlp->threshold.latency = 0;
	tlp->threshold.latency_min = EndOfAllTime;
	tlp->threshold.latency_max = 0;

	FUNC9(timer_longterm_queue);
	FUNC3(s);
}