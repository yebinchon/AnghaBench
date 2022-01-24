#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  turnstile_inheritor_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct turnstile {int /*<<< orphan*/  ts_waitq; } ;
typedef  scalar_t__ mach_msg_timeout_t ;
typedef  int /*<<< orphan*/  mach_msg_return_t ;
typedef  int mach_msg_option_t ;
typedef  TYPE_2__* ipc_port_t ;
typedef  TYPE_3__* ipc_mqueue_t ;
typedef  TYPE_4__* ipc_kmsg_t ;
struct TYPE_21__ {TYPE_1__* ikm_header; } ;
struct TYPE_20__ {scalar_t__ imq_msgcount; int /*<<< orphan*/  imq_fullwaiters; } ;
struct TYPE_19__ {scalar_t__ ip_receiver_name; int /*<<< orphan*/ * ip_destination; } ;
struct TYPE_18__ {int /*<<< orphan*/  msgh_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_MQUEUE_FULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_MSG_SUCCESS ; 
 scalar_t__ MACH_MSG_TYPE_PORT_SEND_ONCE ; 
 scalar_t__ MACH_PORT_NULL ; 
 int MACH_SEND_ALWAYS ; 
 int /*<<< orphan*/  MACH_SEND_INTERRUPTED ; 
 int /*<<< orphan*/  MACH_SEND_INVALID_DEST ; 
 int /*<<< orphan*/  MACH_SEND_NO_BUFFER ; 
 int /*<<< orphan*/  MACH_SEND_TIMED_OUT ; 
 int MACH_SEND_TIMEOUT ; 
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  THREAD_ABORTSAFE ; 
#define  THREAD_AWAKENED 131 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
#define  THREAD_INTERRUPTED 130 
#define  THREAD_RESTART 129 
#define  THREAD_TIMED_OUT 128 
 int THREAD_WAITING ; 
 int /*<<< orphan*/  TIMEOUT_NO_LEEWAY ; 
 int /*<<< orphan*/  TIMEOUT_URGENCY_USER_NORMAL ; 
 int /*<<< orphan*/  TRUE ; 
 int TURNSTILE_DELAYED_UPDATE ; 
 int /*<<< orphan*/  TURNSTILE_INHERITOR_NULL ; 
 int TURNSTILE_INHERITOR_TURNSTILE ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_NOT_HELD ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  TURNSTILE_SYNC_IPC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  c_ipc_mqueue_send_block ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  kThreadWaitPortSend ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct turnstile* FUNC20 (uintptr_t,int /*<<< orphan*/ ,struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct turnstile*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct turnstile*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

mach_msg_return_t
FUNC24(
	ipc_mqueue_t		mqueue,
	ipc_kmsg_t		kmsg,
	mach_msg_option_t	option,
	mach_msg_timeout_t  send_timeout)
{
	int wresult;

	/*
	 *  Don't block if:
	 *	1) We're under the queue limit.
	 *	2) Caller used the MACH_SEND_ALWAYS internal option.
	 *	3) Message is sent to a send-once right.
	 */
	if (!FUNC5(mqueue) ||
	    (!FUNC6(mqueue) &&
	     ((option & MACH_SEND_ALWAYS) ||
	      (FUNC0(kmsg->ikm_header->msgh_bits) ==
	       MACH_MSG_TYPE_PORT_SEND_ONCE)))) {
		mqueue->imq_msgcount++;
		FUNC1(mqueue->imq_msgcount > 0);
		FUNC8(mqueue);
	} else {
		thread_t cur_thread = FUNC4();
		ipc_port_t port = FUNC10(mqueue);
		struct turnstile *send_turnstile = TURNSTILE_NULL;
		turnstile_inheritor_t inheritor = TURNSTILE_INHERITOR_NULL;
		uint64_t deadline;

		/*
		 * We have to wait for space to be granted to us.
		 */
		if ((option & MACH_SEND_TIMEOUT) && (send_timeout == 0)) {
			FUNC8(mqueue);
			return MACH_SEND_TIMED_OUT;
		}
		if (FUNC6(mqueue)) {
			FUNC8(mqueue);
			return MACH_SEND_NO_BUFFER;
		}
		mqueue->imq_fullwaiters = TRUE;

		if (option & MACH_SEND_TIMEOUT)
			FUNC2(send_timeout, 1000*NSEC_PER_USEC, &deadline);
		else
			deadline = 0;

		FUNC17(cur_thread, kThreadWaitPortSend);

		send_turnstile = FUNC20((uintptr_t)port,
			FUNC15(port),
			TURNSTILE_NULL, TURNSTILE_SYNC_IPC);

		/* Check if the port in is in transit, get the destination port's turnstile */
		if (FUNC9(port) &&
		    port->ip_receiver_name == MACH_PORT_NULL &&
		    port->ip_destination != NULL) {
			inheritor = FUNC14(port->ip_destination);
		} else {
			inheritor = FUNC12(port);
		}

		FUNC21(send_turnstile, inheritor,
				TURNSTILE_DELAYED_UPDATE | TURNSTILE_INHERITOR_TURNSTILE);

		wresult = FUNC23(
					&send_turnstile->ts_waitq,
					IPC_MQUEUE_FULL,
					THREAD_ABORTSAFE,
					TIMEOUT_URGENCY_USER_NORMAL,
					deadline,
					TIMEOUT_NO_LEEWAY);

		FUNC8(mqueue);
		FUNC22(send_turnstile,
				TURNSTILE_INTERLOCK_NOT_HELD);

		if (wresult == THREAD_WAITING) {
			wresult = FUNC16(THREAD_CONTINUE_NULL);
			FUNC3(c_ipc_mqueue_send_block++);
		}

		/* Call turnstile complete with interlock held */
		FUNC7(mqueue);
		FUNC19((uintptr_t)port, FUNC15(port), NULL);
		FUNC8(mqueue);

		/* Call cleanup after dropping the interlock */
		FUNC18();

		switch (wresult) {

		case THREAD_AWAKENED:
			/*
			 * we can proceed - inherited msgcount from waker
			 * or the message queue has been destroyed and the msgcount
			 * has been reset to zero (will detect in ipc_mqueue_post()).
			 */
			break;

		case THREAD_TIMED_OUT:
			FUNC1(option & MACH_SEND_TIMEOUT);
			return MACH_SEND_TIMED_OUT;

		case THREAD_INTERRUPTED:
			return MACH_SEND_INTERRUPTED;

		case THREAD_RESTART:
			/* mqueue is being destroyed */
			return MACH_SEND_INVALID_DEST;
		default:
			FUNC13("ipc_mqueue_send");
		}
	}

	FUNC11(mqueue, kmsg, option);
	return MACH_MSG_SUCCESS;
}