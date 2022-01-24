#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_timeout_urgency_t ;
typedef  scalar_t__ wait_result_t ;
typedef  int /*<<< orphan*/  wait_interrupt_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_1__* thread_t ;
struct waitq_set {int dummy; } ;
struct waitq {uintptr_t waitq_eventmask; int /*<<< orphan*/  waitq_fifo; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  struct waitq* event64_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {scalar_t__ sched_pri; int options; int /*<<< orphan*/  wait_timer_is_set; int /*<<< orphan*/  wait_timer_active; int /*<<< orphan*/  wait_timer; struct waitq* waitq; struct waitq* wait_event; scalar_t__ wait_result; int /*<<< orphan*/  started; } ;

/* Variables and functions */
 scalar_t__ BASEPRI_REALTIME ; 
 int /*<<< orphan*/  FALSE ; 
 struct waitq* NO_EVENT64 ; 
 scalar_t__ THREAD_AWAKENED ; 
 scalar_t__ THREAD_WAITING ; 
 int TH_OPT_VMPRIV ; 
 int /*<<< orphan*/  TRUE ; 
 int WQ_ITERATE_FOUND ; 
 uintptr_t FUNC0 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,struct waitq*) ; 
 int /*<<< orphan*/  prepost_exists_cb ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct waitq* FUNC12 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC13 (struct waitq*) ; 
 scalar_t__ FUNC14 (struct waitq*) ; 
 scalar_t__ FUNC15 (struct waitq*) ; 
 scalar_t__ FUNC16 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC17 (struct waitq*) ; 
 scalar_t__ FUNC18 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC19 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC20 (struct waitq*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC22 (struct waitq*) ; 
 int FUNC23 (struct waitq_set*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

wait_result_t FUNC24(struct waitq *waitq,
					  event64_t wait_event,
					  wait_interrupt_t interruptible,
					  wait_timeout_urgency_t urgency,
					  uint64_t deadline,
					  uint64_t leeway,
					  thread_t thread)
{
	wait_result_t wait_result;
	int realtime = 0;
	struct waitq *safeq;
	uintptr_t eventmask;
	spl_t s;


	/*
	 * Warning: Do _not_ place debugging print statements here.
	 *          The waitq is locked!
	 */
	FUNC1(!thread->started || thread == FUNC2());

	if (thread->waitq != NULL)
		FUNC3("thread already waiting on %p", thread->waitq);

	if (FUNC15(waitq)) {
		struct waitq_set *wqset = (struct waitq_set *)waitq;
		/*
		 * early-out if the thread is waiting on a wait queue set
		 * that has already been pre-posted.
		 */
		if (wait_event == NO_EVENT64 && FUNC18(wqset)) {
			int ret;
			/*
			 * Run through the list of potential preposts. Because
			 * this is a hot path, we short-circuit the iteration
			 * if we find just one prepost object.
			 */
			ret = FUNC23(wqset, NULL,
							prepost_exists_cb);
			if (ret == WQ_ITERATE_FOUND) {
				s = FUNC4();
				FUNC6(thread);
				thread->wait_result = THREAD_AWAKENED;
				FUNC8(thread);
				FUNC5(s);
				return THREAD_AWAKENED;
			}
		}
	}

	s = FUNC4();

	/*
	 * If already dealing with an irq safe wait queue, we are all set.
	 * Otherwise, determine a global queue to use and lock it.
	 */
	if (!FUNC13(waitq)) {
		safeq = FUNC12(waitq);
		eventmask = FUNC0(waitq);
		FUNC17(safeq);
	} else {
		safeq = waitq;
		eventmask = FUNC0(wait_event);
	}

	/* lock the thread now that we have the irq-safe waitq locked */
	FUNC6(thread);

	/*
	 * Realtime threads get priority for wait queue placements.
	 * This allows wait_queue_wakeup_one to prefer a waiting
	 * realtime thread, similar in principle to performing
	 * a wait_queue_wakeup_all and allowing scheduler prioritization
	 * to run the realtime thread, but without causing the
	 * lock contention of that scenario.
	 */
	if (thread->sched_pri >= BASEPRI_REALTIME)
		realtime = 1;

	/*
	 * This is the extent to which we currently take scheduling attributes
	 * into account.  If the thread is vm priviledged, we stick it at
	 * the front of the queue.  Later, these queues will honor the policy
	 * value set at waitq_init time.
	 */
	wait_result = FUNC7(thread, interruptible);
	/* thread->wait_result has been set */
	if (wait_result == THREAD_WAITING) {
		
		if (!safeq->waitq_fifo
		    || (thread->options & TH_OPT_VMPRIV) || realtime)
			FUNC20(safeq, thread, false);
		else
			FUNC20(safeq, thread, true);

		/* mark the event and real waitq, even if enqueued on a global safeq */
		thread->wait_event = wait_event;
		thread->waitq = waitq;

		if (deadline != 0) {
			boolean_t act;

			act = FUNC9(&thread->wait_timer,
							   NULL,
							   deadline, leeway,
							   urgency, FALSE);
			if (!act)
				thread->wait_timer_active++;
			thread->wait_timer_is_set = TRUE;
		}

		if (FUNC14(safeq))
			safeq->waitq_eventmask |= eventmask;

		FUNC19(waitq);
	}

	/* unlock the thread */
	FUNC8(thread);

	/* update the inheritor's thread priority if the waitq is embedded in turnstile */
	if (FUNC16(safeq) && wait_result == THREAD_WAITING) {
		FUNC10(FUNC21(safeq));
		FUNC11(FUNC21(safeq));
	}

	/* unlock the safeq if we locked it here */
	if (safeq != waitq) {
		FUNC22(safeq);
	}

	FUNC5(s);

	return wait_result;
}