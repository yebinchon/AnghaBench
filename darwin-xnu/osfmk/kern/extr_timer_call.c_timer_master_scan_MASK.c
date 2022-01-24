#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_16__ {scalar_t__ interval; scalar_t__ deadline; TYPE_3__* call; } ;
struct TYPE_17__ {TYPE_1__ threshold; } ;
typedef  TYPE_2__ timer_longterm_t ;
typedef  TYPE_3__* timer_call_t ;
typedef  int /*<<< orphan*/  queue_entry_t ;
struct TYPE_19__ {int /*<<< orphan*/  head; } ;
typedef  TYPE_4__ mpqueue_head_t ;
struct TYPE_18__ {int flags; int /*<<< orphan*/  lock; } ;
struct TYPE_15__ {scalar_t__ deadline; } ;

/* Variables and functions */
 TYPE_13__* FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int TIMER_CALL_LOCAL ; 
 scalar_t__ TIMER_LONGTERM_NONE ; 
 int /*<<< orphan*/  master_cpu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_longterm_queue ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC13(timer_longterm_t	*tlp,
		  uint64_t		now)
{
	queue_entry_t	qe;
	timer_call_t	call;
	uint64_t	threshold;
	uint64_t	deadline;
	mpqueue_head_t	*timer_master_queue;

	if (tlp->threshold.interval != TIMER_LONGTERM_NONE)
		threshold = now + tlp->threshold.interval;
	else
		threshold = TIMER_LONGTERM_NONE;

	timer_master_queue = FUNC10(master_cpu);
	FUNC11(timer_master_queue);

	qe = FUNC3(&timer_master_queue->head);
	while (!FUNC2(&timer_master_queue->head, qe)) {
		call = FUNC1(qe);
		deadline = FUNC0(call)->deadline;
		qe = FUNC4(qe);
		if ((call->flags & TIMER_CALL_LOCAL) != 0)
			continue;
		if (!FUNC5(&call->lock)) {
			/* case (2c) lock order inversion, dequeue only */
			FUNC8(call);
			continue;
		}
		if (deadline > threshold) {
			/* move from master to longterm */
			FUNC7(call);
			FUNC9(call, timer_longterm_queue);
			if (deadline < tlp->threshold.deadline) {
				tlp->threshold.deadline = deadline;
				tlp->threshold.call = call;
			}
		}
		FUNC6(&call->lock);
	}
	FUNC12(timer_master_queue);
}