#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wait_result_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/ * turnstile_inheritor_t ;
typedef  TYPE_1__* thread_t ;
struct turnstile {int dummy; } ;
typedef  scalar_t__ mach_msg_timeout_t ;
typedef  int /*<<< orphan*/  mach_msg_size_t ;
typedef  int mach_msg_option_t ;
typedef  TYPE_2__* ipc_port_t ;
typedef  TYPE_3__* ipc_mqueue_t ;
typedef  int /*<<< orphan*/ * ipc_kmsg_queue_t ;
struct TYPE_27__ {int /*<<< orphan*/  waitq_type; } ;
struct TYPE_26__ {TYPE_5__ imq_wait_queue; int /*<<< orphan*/  imq_messages; int /*<<< orphan*/  imq_set_queue; } ;
struct TYPE_25__ {scalar_t__ ip_specialreply; } ;
struct TYPE_24__ {int ith_option; int /*<<< orphan*/  ith_state; scalar_t__ ith_msize; int /*<<< orphan*/  ith_rsize; } ;

/* Variables and functions */
 scalar_t__ IKM_NULL ; 
 TYPE_3__* IMQ_NULL ; 
 int /*<<< orphan*/  IPC_MQUEUE_RECEIVE ; 
 int /*<<< orphan*/  MACH_PEEK_IN_PROGRESS ; 
 int MACH_PEEK_MSG ; 
 int /*<<< orphan*/  MACH_RCV_IN_PROGRESS ; 
 int /*<<< orphan*/  MACH_RCV_TIMED_OUT ; 
 int MACH_RCV_TIMEOUT ; 
 int NSEC_PER_USEC ; 
 scalar_t__ THREAD_AWAKENED ; 
 scalar_t__ THREAD_NOT_WAITING ; 
 scalar_t__ THREAD_RESTART ; 
 int /*<<< orphan*/  TIMEOUT_NO_LEEWAY ; 
 int /*<<< orphan*/  TIMEOUT_URGENCY_USER_NORMAL ; 
 int TURNSTILE_DELAYED_UPDATE ; 
 int TURNSTILE_INHERITOR_TURNSTILE ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_NOT_HELD ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  TURNSTILE_SYNC_IPC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,scalar_t__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_2__* FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  kThreadWaitPortReceive ; 
 int /*<<< orphan*/  mqueue_process_prepost_receive ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct turnstile* FUNC13 (uintptr_t,int /*<<< orphan*/ ,struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct turnstile*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct turnstile*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_3__**,int /*<<< orphan*/ ) ; 

wait_result_t
FUNC18(
	ipc_mqueue_t            mqueue,
	mach_msg_option_t       option,
	mach_msg_size_t         max_size,
	mach_msg_timeout_t      rcv_timeout,
	int                     interruptible,
	thread_t                thread)
{
	wait_result_t           wresult;
	uint64_t		deadline;
	struct turnstile        *rcv_turnstile = TURNSTILE_NULL;
	turnstile_inheritor_t   inheritor = NULL;

	/* called with mqueue locked */

	/* no need to reserve anything: we never prepost to anyone */

	if (!FUNC4(mqueue)) {
		/* someone raced us to destroy this mqueue/port! */
		FUNC3(mqueue);
		/*
		 * ipc_mqueue_receive_results updates the thread's ith_state
		 * TODO: differentiate between rights being moved and
		 * rights/ports being destroyed (21885327)
		 */
		return THREAD_RESTART;
	}

	if (FUNC2(mqueue)) {
		ipc_mqueue_t port_mq = IMQ_NULL;

		(void)FUNC17(&mqueue->imq_set_queue,
						 &port_mq,
		                 mqueue_process_prepost_receive);

		if (port_mq != IMQ_NULL) {
			/*
			 * We get here if there is at least one message
			 * waiting on port_mq. We have instructed the prepost
			 * iteration logic to leave both the port_mq and the
			 * set mqueue locked.
			 *
			 * TODO: previously, we would place this port at the
			 *       back of the prepost list...
			 */
			FUNC3(mqueue);

			/*
			 * Continue on to handling the message with just
			 * the port mqueue locked.
			 */
			if (option & MACH_PEEK_MSG)
				FUNC7(port_mq, option, thread);
			else
				FUNC8(port_mq, mqueue, option,
							    max_size, thread);

			FUNC3(port_mq);
			return THREAD_NOT_WAITING;
		}
	} else if (FUNC1(mqueue)) {
		ipc_kmsg_queue_t kmsgs;

		/*
		 * Receive on a single port. Just try to get the messages.
		 */
		kmsgs = &mqueue->imq_messages;
		if (FUNC6(kmsgs) != IKM_NULL) {
			if (option & MACH_PEEK_MSG)
				FUNC7(mqueue, option, thread);
			else
				FUNC8(mqueue, IMQ_NULL, option,
							    max_size, thread);
			FUNC3(mqueue);
			return THREAD_NOT_WAITING;
		}
	} else {
		FUNC10("Unknown mqueue type 0x%x: likely memory corruption!\n",
		      mqueue->imq_wait_queue.waitq_type);
	}

	/*
	 * Looks like we'll have to block.  The mqueue we will
	 * block on (whether the set's or the local port's) is
	 * still locked.
	 */
	if (option & MACH_RCV_TIMEOUT) {
		if (rcv_timeout == 0) {
			FUNC3(mqueue);
			thread->ith_state = MACH_RCV_TIMED_OUT;
			return THREAD_NOT_WAITING;
		}
	}

	thread->ith_option = option;
	thread->ith_rsize = max_size;
	thread->ith_msize = 0;

	if (option & MACH_PEEK_MSG)
		thread->ith_state = MACH_PEEK_IN_PROGRESS;
	else
		thread->ith_state = MACH_RCV_IN_PROGRESS;

	if (option & MACH_RCV_TIMEOUT)
		FUNC0(rcv_timeout, 1000*NSEC_PER_USEC, &deadline);
	else
		deadline = 0;

	/*
	 * Threads waiting on a port (not portset)
	 * will wait on port's receive turnstile.
	 * Donate waiting thread's turnstile and
	 * setup inheritor for special reply port.
	 * Based on the state of the special reply
	 * port, the inheritor would be the send
	 * turnstile of the connection port on which
	 * the send of sync ipc would happen or
	 * workloop's turnstile who would reply to
	 * the sync ipc message.
	 *
	 * Pass in mqueue wait in waitq_assert_wait to
	 * support port set wakeup. The mqueue waitq of port
	 * will be converted to to turnstile waitq
	 * in waitq_assert_wait instead of global waitqs.
	 */
	if (FUNC1(mqueue)) {
		ipc_port_t port = FUNC5(mqueue);
		rcv_turnstile = FUNC13((uintptr_t)port,
			FUNC11(port),
			TURNSTILE_NULL, TURNSTILE_SYNC_IPC);

		if (port->ip_specialreply) {
			inheritor = FUNC9(port);
		}

		FUNC14(rcv_turnstile, inheritor,
			(TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_DELAYED_UPDATE));
	}

	FUNC12(thread, kThreadWaitPortReceive);
	wresult = FUNC16(&mqueue->imq_wait_queue,
					     IPC_MQUEUE_RECEIVE,
					     interruptible,
					     TIMEOUT_URGENCY_USER_NORMAL,
					     deadline,
					     TIMEOUT_NO_LEEWAY,
					     thread);
	/* preposts should be detected above, not here */
	if (wresult == THREAD_AWAKENED)
		FUNC10("ipc_mqueue_receive_on_thread: sleep walking");

	FUNC3(mqueue);

	/* Check if its a port mqueue and if it needs to call turnstile_update_inheritor_complete */
	if (rcv_turnstile != TURNSTILE_NULL) {
		FUNC15(rcv_turnstile, TURNSTILE_INTERLOCK_NOT_HELD);
	}
	/* Its callers responsibility to call turnstile_complete to get the turnstile back */

	return wresult;
}