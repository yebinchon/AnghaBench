#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* thread_t ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  mach_node_t ;
typedef  scalar_t__ mach_msg_size_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_2__* ipc_mqueue_t ;
typedef  TYPE_3__* ipc_kmsg_t ;
typedef  int /*<<< orphan*/ * ipc_kmsg_queue_t ;
struct TYPE_24__ {int /*<<< orphan*/  ikm_node; } ;
struct TYPE_23__ {int /*<<< orphan*/  imq_fport; int /*<<< orphan*/  imq_seqno; int /*<<< orphan*/  imq_receiver_name; int /*<<< orphan*/  imq_messages; struct waitq_set imq_set_queue; struct waitq imq_wait_queue; } ;
struct TYPE_22__ {scalar_t__ ith_state; int ith_option; scalar_t__ ith_rsize; scalar_t__ ith_seqno; TYPE_3__* ith_kmsg; int /*<<< orphan*/  ith_receiver_name; scalar_t__ ith_msize; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* IKM_NULL ; 
 int /*<<< orphan*/  IMQ_NULL ; 
 int /*<<< orphan*/  IPC_MQUEUE_RECEIVE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MACH_MSG_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MACH_PEEK_IN_PROGRESS ; 
 scalar_t__ MACH_RCV_IN_PROGRESS ; 
 int MACH_RCV_LARGE ; 
 scalar_t__ MACH_RCV_TOO_LARGE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THREAD_AWAKENED ; 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WAITQ_ALL_PRIORITIES ; 
 int /*<<< orphan*/  WAITQ_ALREADY_LOCKED ; 
 int /*<<< orphan*/  WAITQ_KEEP_LOCKED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (struct waitq*,struct waitq_set*,int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_1__* FUNC17 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct waitq_set*) ; 

kern_return_t
FUNC19(
	ipc_mqueue_t	port_mqueue,
	ipc_mqueue_t	set_mqueue,
	uint64_t	*reserved_link,
	uint64_t	*reserved_prepost)
{
	struct waitq     *port_waitq = &port_mqueue->imq_wait_queue;
	struct waitq_set *set_waitq = &set_mqueue->imq_set_queue;
	ipc_kmsg_queue_t kmsgq;
	ipc_kmsg_t       kmsg, next;
	kern_return_t	 kr;

	FUNC3(reserved_link && *reserved_link != 0);
	FUNC3(FUNC18(set_waitq));

	FUNC5(port_mqueue);

	/*
	 * The link operation is now under the same lock-hold as
	 * message iteration and thread wakeup, but doesn't have to be...
	 */
	kr = FUNC16(port_waitq, set_waitq, WAITQ_ALREADY_LOCKED, reserved_link);
	if (kr != KERN_SUCCESS) {
		FUNC6(port_mqueue);
		return kr;
	}

	/*
	 * Now that the set has been added to the port, there may be
	 * messages queued on the port and threads waiting on the set
	 * waitq.  Lets get them together.
	 */
	kmsgq = &port_mqueue->imq_messages;
	for (kmsg = FUNC8(kmsgq);
	     kmsg != IKM_NULL;
	     kmsg = next) {
		next = FUNC9(kmsgq, kmsg);

		for (;;) {
			thread_t th;
			mach_msg_size_t msize;
			spl_t th_spl;

			th = FUNC17(
						port_waitq,
						IPC_MQUEUE_RECEIVE,
						THREAD_AWAKENED, &th_spl,
						reserved_prepost, WAITQ_ALL_PRIORITIES,
						WAITQ_KEEP_LOCKED);
			/* waitq/mqueue still locked, thread locked */

			if (th == THREAD_NULL)
				goto leave;

			/*
			 * If the receiver waited with a facility not directly
			 * related to Mach messaging, then it isn't prepared to get
			 * handed the message directly.  Just set it running, and
			 * go look for another thread that can.
			 */
			if (th->ith_state != MACH_RCV_IN_PROGRESS) {
				if (th->ith_state == MACH_PEEK_IN_PROGRESS) {
					/*
					 * wakeup the peeking thread, but
					 * continue to loop over the threads
					 * waiting on the port's mqueue to see
					 * if there are any actual receivers
					 */
					FUNC11(port_mqueue,
								  th->ith_option,
								  th);
				}
				FUNC15(th);
				FUNC13(th_spl);
				continue;
			}

			/*
			 * Found a receiver. see if they can handle the message
			 * correctly (the message is not too large for them, or
			 * they didn't care to be informed that the message was
			 * too large).  If they can't handle it, take them off
			 * the list and let them go back and figure it out and
			 * just move onto the next.
			 */
			msize = FUNC7(kmsg, th->map);
			if (th->ith_rsize <
					(msize + FUNC2(FUNC14(th), th->ith_option))) {
				th->ith_state = MACH_RCV_TOO_LARGE;
				th->ith_msize = msize;
				if (th->ith_option & MACH_RCV_LARGE) {
					/*
					 * let him go without message
					 */
					th->ith_receiver_name = port_mqueue->imq_receiver_name;
					th->ith_kmsg = IKM_NULL;
					th->ith_seqno = 0;
					FUNC15(th);
					FUNC13(th_spl);
					continue; /* find another thread */
				}
			} else {
				th->ith_state = MACH_MSG_SUCCESS;
			}

			/*
			 * This thread is going to take this message,
			 * so give it to him.
			 */
			FUNC10(kmsgq, kmsg);
#if MACH_FLIPC
			mach_node_t  node = kmsg->ikm_node;
#endif
			FUNC12(port_mqueue, IMQ_NULL);

			th->ith_kmsg = kmsg;
			th->ith_seqno = port_mqueue->imq_seqno++;
			FUNC15(th);
			FUNC13(th_spl);
#if MACH_FLIPC
            if (MACH_NODE_VALID(node) && FPORT_VALID(port_mqueue->imq_fport))
                flipc_msg_ack(node, port_mqueue, TRUE);
#endif
			break;  /* go to next message */
		}
	}
 leave:
	FUNC6(port_mqueue);
	return KERN_SUCCESS;
}