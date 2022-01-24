#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_21__ {int /*<<< orphan*/  count; } ;
struct TYPE_20__ {scalar_t__ interval; scalar_t__ deadline; TYPE_5__* call; } ;
struct TYPE_22__ {scalar_t__ scan_limit; TYPE_3__ queue; int /*<<< orphan*/  scan_pauses; TYPE_2__ threshold; int /*<<< orphan*/  escalates; } ;
typedef  TYPE_4__ timer_longterm_t ;
typedef  TYPE_5__* timer_call_t ;
typedef  int /*<<< orphan*/  queue_entry_t ;
typedef  int /*<<< orphan*/  mpqueue_head_t ;
struct TYPE_24__ {int /*<<< orphan*/  head; } ;
struct TYPE_19__ {TYPE_5__* lock_data; } ;
struct TYPE_17__ {TYPE_1__ interlock; } ;
struct TYPE_23__ {scalar_t__ soft_deadline; TYPE_11__ lock; } ;
struct TYPE_18__ {scalar_t__ deadline; scalar_t__ entry_time; int /*<<< orphan*/  func; TYPE_5__* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int DBG_FUNC_NONE ; 
 int DECR_TIMER_ASYNC_DEQ ; 
 int DECR_TIMER_ESCALATE ; 
 int DECR_TIMER_OVERDUE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 TYPE_15__* FUNC1 (TYPE_5__*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ TIMER_LONGTERM_NONE ; 
 scalar_t__ TIMER_LONGTERM_SCAN_AGAIN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ master_cpu ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_7__* timer_longterm_queue ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

void
FUNC23(timer_longterm_t	*tlp,
		    uint64_t		time_start)
{
	queue_entry_t	qe;
	timer_call_t	call;
	uint64_t	threshold;
	uint64_t	deadline;
	uint64_t	time_limit = time_start + tlp->scan_limit;
	mpqueue_head_t	*timer_master_queue;

	FUNC6(!FUNC9());
	FUNC6(FUNC7() == master_cpu);

	if (tlp->threshold.interval != TIMER_LONGTERM_NONE)
		threshold = time_start + tlp->threshold.interval;

	tlp->threshold.deadline = TIMER_LONGTERM_NONE;
	tlp->threshold.call = NULL;

	if (FUNC10(&timer_longterm_queue->head))
		return;

	timer_master_queue = FUNC20(master_cpu);
	FUNC21(timer_master_queue);

	qe = FUNC12(&timer_longterm_queue->head);
	while (!FUNC11(&timer_longterm_queue->head, qe)) {
		call = FUNC2(qe);
		deadline = call->soft_deadline;
		qe = FUNC13(qe);
		if (!FUNC14(&call->lock)) {
			/* case (2c) lock order inversion, dequeue only */
#ifdef TIMER_ASSERT
			TIMER_KDEBUG_TRACE(KDEBUG_TRACE,
				DECR_TIMER_ASYNC_DEQ | DBG_FUNC_NONE,
				VM_KERNEL_UNSLIDE_OR_PERM(call),
				VM_KERNEL_UNSLIDE_OR_PERM(TCE(call)->queue),
				VM_KERNEL_UNSLIDE_OR_PERM(call->lock.interlock.lock_data),
				0x2c, 0);
#endif
			FUNC17(call);
			continue;
		}
		if (deadline < threshold) {
			/*
			 * This timer needs moving (escalating)
			 * to the local (boot) processor's queue.
			 */
#ifdef TIMER_ASSERT
			if (deadline < time_start)
				TIMER_KDEBUG_TRACE(KDEBUG_TRACE,
       		 			DECR_TIMER_OVERDUE | DBG_FUNC_NONE,
					VM_KERNEL_UNSLIDE_OR_PERM(call),
					deadline,
					time_start,
					threshold,
					0);
#endif
			FUNC3(KDEBUG_TRACE,
       	 			DECR_TIMER_ESCALATE | DBG_FUNC_NONE,
				FUNC5(call),
				FUNC1(call)->deadline,
				FUNC1(call)->entry_time,
				FUNC4(FUNC1(call)->func),
				0);
			tlp->escalates++;
			FUNC16(call);
			FUNC18(
				call, timer_master_queue, FUNC1(call)->deadline);
			/*
			 * A side-effect of the following call is to update
			 * the actual hardware deadline if required.
			 */
			(void) FUNC19(deadline);
		} else {
			if (deadline < tlp->threshold.deadline) {
				tlp->threshold.deadline = deadline;
				tlp->threshold.call = call;
			}
		}
		FUNC15(&call->lock);

		/* Abort scan if we're taking too long. */
		if (FUNC8() > time_limit) {
			tlp->threshold.deadline = TIMER_LONGTERM_SCAN_AGAIN;
			tlp->scan_pauses++;
			FUNC0("timer_longterm_scan() paused %llu, qlen: %llu\n",
			    time_limit, tlp->queue.count); 
			break;
		}
	}

	FUNC22(timer_master_queue);
}