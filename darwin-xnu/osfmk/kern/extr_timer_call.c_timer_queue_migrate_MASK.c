#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_17__ ;
typedef  struct TYPE_21__   TYPE_12__ ;

/* Type definitions */
typedef  TYPE_2__* timer_call_t ;
struct TYPE_25__ {int /*<<< orphan*/  earliest_soft_deadline; int /*<<< orphan*/  head; } ;
typedef  TYPE_3__ mpqueue_head_t ;
struct TYPE_23__ {TYPE_2__* lock_data; } ;
struct TYPE_21__ {TYPE_1__ interlock; } ;
struct TYPE_24__ {int flags; TYPE_12__ lock; } ;
struct TYPE_22__ {scalar_t__ deadline; TYPE_2__* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*,TYPE_3__*) ; 
 int DBG_FUNC_NONE ; 
 int DECR_TIMER_ASYNC_DEQ ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 TYPE_17__* FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int TIMER_CALL_LOCAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ serverperfmode ; 
 int /*<<< orphan*/  FUNC12 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  timer_queue_migrate_lock_skips ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 

int
FUNC19(mpqueue_head_t *queue_from, mpqueue_head_t *queue_to)
{
	timer_call_t	call;
	timer_call_t	head_to;
	int		timers_migrated = 0;

	FUNC0("timer_queue_migrate(%p,%p)\n", queue_from, queue_to);

	FUNC5(!FUNC6());
	FUNC5(queue_from != queue_to);

	if (serverperfmode) {
		/*
		 * if we're running a high end server
		 * avoid migrations... they add latency
		 * and don't save us power under typical
		 * server workloads
		 */
		return -4;
	}

	/*
	 * Take both local (from) and target (to) timer queue locks while
	 * moving the timers from the local queue to the target processor.
	 * We assume that the target is always the boot processor.
	 * But only move if all of the following is true:
	 *  - the target queue is non-empty
	 *  - the local queue is non-empty
	 *  - the local queue's first deadline is later than the target's
	 *  - the local queue contains no non-migrateable "local" call
	 * so that we need not have the target resync.
	 */

        FUNC17(queue_to);

	head_to = FUNC2(FUNC10(&queue_to->head));
	if (FUNC8(&queue_to->head)) {
		timers_migrated = -1;
		goto abort1;
	}

        FUNC17(queue_from);

	if (FUNC8(&queue_from->head)) {
		timers_migrated = -2;
		goto abort2;
	}

	call = FUNC2(FUNC10(&queue_from->head));
	if (FUNC1(call)->deadline < FUNC1(head_to)->deadline) {
		timers_migrated = 0;
		goto abort2;
	}

	/* perform scan for non-migratable timers */
	do {
		if (call->flags & TIMER_CALL_LOCAL) {
			timers_migrated = -3;
			goto abort2;
		}
		call = FUNC2(FUNC11(FUNC7(call)));
	} while (!FUNC9(&queue_from->head, FUNC7(call)));

	/* migration loop itself -- both queues are locked */
	while (!FUNC8(&queue_from->head)) {
		call = FUNC2(FUNC10(&queue_from->head));
		if (!FUNC12(&call->lock)) {
			/* case (2b) lock order inversion, dequeue only */
#ifdef TIMER_ASSERT
			TIMER_KDEBUG_TRACE(KDEBUG_TRACE, 
				DECR_TIMER_ASYNC_DEQ | DBG_FUNC_NONE,
				VM_KERNEL_UNSLIDE_OR_PERM(call),
				VM_KERNEL_UNSLIDE_OR_PERM(TCE(call)->queue),
				VM_KERNEL_UNSLIDE_OR_PERM(call->lock.interlock.lock_data),
				0x2b, 0);
#endif
			timer_queue_migrate_lock_skips++;
			FUNC15(call);
			continue;
		}
		FUNC14(call);
		FUNC16(
			call, queue_to, FUNC1(call)->deadline);
		timers_migrated++;
		FUNC13(&call->lock);
	}
	queue_from->earliest_soft_deadline = UINT64_MAX;
abort2:
       	FUNC18(queue_from);
abort1:
       	FUNC18(queue_to);

	return timers_migrated;
}