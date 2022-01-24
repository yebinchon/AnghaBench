#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct waitq_link {int dummy; } ;
struct waitq {scalar_t__ waitq_set_id; scalar_t__ waitq_eventmask; } ;
struct select_thread_ctx {int /*<<< orphan*/ * spl; scalar_t__ event; TYPE_1__* thread; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ event64_t ;
struct TYPE_7__ {scalar_t__ wait_event; struct waitq* waitq; } ;

/* Variables and functions */
 scalar_t__ KERN_NOT_WAITING ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  LINK_WALK_FULL_DAG ; 
 int /*<<< orphan*/  WQL_WQS ; 
 scalar_t__ WQ_ITERATE_FOUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (struct waitq*) ; 
 struct waitq* FUNC6 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*) ; 
 int /*<<< orphan*/  waitq_select_thread_cb ; 
 int /*<<< orphan*/  FUNC9 (struct waitq*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct waitq*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct waitq*,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 struct waitq_link* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct waitq_link*) ; 

__attribute__((used)) static kern_return_t FUNC14(struct waitq *waitq,
						event64_t event,
						thread_t thread, spl_t *spl)
{
	struct waitq *safeq;
	struct waitq_link *link;
	struct select_thread_ctx ctx;
	kern_return_t kr;
	spl_t s;

	s = FUNC0();

	/* Find and lock the interrupts disabled queue the thread is actually on */
	if (!FUNC7(waitq)) {
		safeq = FUNC6(waitq);
		FUNC8(safeq);
	} else {
		safeq = waitq;
	}

	FUNC3(thread);

	if ((thread->waitq == waitq) && (thread->wait_event == event)) {
		FUNC9(safeq, thread);
		if (FUNC5(safeq)) {
			safeq->waitq_eventmask = 0;
		}
		FUNC2(thread);
		*spl = s;
		/* thread still locked */
		return KERN_SUCCESS;
	}

	FUNC4(thread);

	if (safeq != waitq)
		FUNC10(safeq);

	FUNC1(s);

	if (!waitq->waitq_set_id)
		return KERN_NOT_WAITING;

	/* check to see if the set ID for this wait queue is valid */
	link = FUNC12(waitq->waitq_set_id);
	if (!link) {
		/* the waitq to which this set belonged, has been invalidated */
		waitq->waitq_set_id = 0;
		return KERN_NOT_WAITING;
	}

	/*
	 * The thread may be waiting on a wait queue set to which
	 * the input 'waitq' belongs. Go look for the thread in
	 * all wait queue sets. If it's there, we'll remove it
	 * because it's equivalent to waiting directly on the input waitq.
	 */
	ctx.thread = thread;
	ctx.event = event;
	ctx.spl = spl;
	kr = FUNC11(LINK_WALK_FULL_DAG, waitq, waitq->waitq_set_id,
			      WQL_WQS, (void *)&ctx, waitq_select_thread_cb);

	FUNC13(link);

	/* we found a thread, return success */
	if (kr == WQ_ITERATE_FOUND)
		return KERN_SUCCESS;

	return KERN_NOT_WAITING;
}