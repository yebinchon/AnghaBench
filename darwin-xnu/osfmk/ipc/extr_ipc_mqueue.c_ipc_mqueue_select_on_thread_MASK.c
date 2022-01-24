#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ mach_msg_size_t ;
typedef  void* mach_msg_return_t ;
typedef  int mach_msg_option_t ;
typedef  TYPE_2__* ipc_mqueue_t ;
typedef  TYPE_3__* ipc_kmsg_t ;
struct TYPE_19__ {int /*<<< orphan*/  ikm_node; } ;
struct TYPE_18__ {int /*<<< orphan*/  imq_seqno; int /*<<< orphan*/  imq_fport; int /*<<< orphan*/  imq_messages; int /*<<< orphan*/  imq_receiver_name; } ;
struct TYPE_17__ {void* ith_state; TYPE_3__* ith_kmsg; scalar_t__ ith_seqno; scalar_t__ ith_msize; int /*<<< orphan*/  ith_receiver_name; int /*<<< orphan*/  map; } ;
struct TYPE_16__ {int /*<<< orphan*/  messages_received; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* IKM_NULL ; 
 void* MACH_MSG_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MACH_RCV_LARGE ; 
 void* MACH_RCV_TOO_LARGE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_14__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void
FUNC11(
	ipc_mqueue_t		port_mq,
	ipc_mqueue_t		set_mq,
	mach_msg_option_t	option,
	mach_msg_size_t		max_size,
	thread_t                thread)
{
	ipc_kmsg_t kmsg;
	mach_msg_return_t mr = MACH_MSG_SUCCESS;
	mach_msg_size_t msize;

	/*
	 * Do some sanity checking of our ability to receive
	 * before pulling the message off the queue.
	 */
	kmsg = FUNC7(&port_mq->imq_messages);
	FUNC3(kmsg != IKM_NULL);

	/*
	 * If we really can't receive it, but we had the
	 * MACH_RCV_LARGE option set, then don't take it off
	 * the queue, instead return the appropriate error
	 * (and size needed).
	 */
	msize = FUNC6(kmsg, thread->map);
	if (msize + FUNC2(FUNC10(thread), option) > max_size) {
		mr = MACH_RCV_TOO_LARGE;
		if (option & MACH_RCV_LARGE) {
			thread->ith_receiver_name = port_mq->imq_receiver_name;
			thread->ith_kmsg = IKM_NULL;
			thread->ith_msize = msize;
			thread->ith_seqno = 0;
			thread->ith_state = mr;
			return;
		}
	}

	FUNC8(&port_mq->imq_messages, kmsg);
#if MACH_FLIPC
    if (MACH_NODE_VALID(kmsg->ikm_node) && FPORT_VALID(port_mq->imq_fport))
        flipc_msg_ack(kmsg->ikm_node, port_mq, TRUE);
#endif
	FUNC9(port_mq, set_mq);
	thread->ith_seqno = port_mq->imq_seqno++;
	thread->ith_kmsg = kmsg;
	thread->ith_state = mr;

	FUNC4()->messages_received++;
	return;
}