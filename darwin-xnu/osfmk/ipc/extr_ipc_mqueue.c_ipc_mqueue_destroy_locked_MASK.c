#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct turnstile {int /*<<< orphan*/  ts_waitq; } ;
typedef  TYPE_1__* ipc_mqueue_t ;
typedef  TYPE_2__* ipc_kmsg_t ;
typedef  int /*<<< orphan*/ * ipc_kmsg_queue_t ;
typedef  void* boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  ikm_node; } ;
struct TYPE_10__ {scalar_t__ imq_preposts; scalar_t__ imq_in_pset; int /*<<< orphan*/  imq_wait_queue; scalar_t__ imq_msgcount; int /*<<< orphan*/  imq_fport; int /*<<< orphan*/  imq_messages; void* imq_fullwaiters; } ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* IKM_NULL ; 
 int /*<<< orphan*/  IPC_MQUEUE_FULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_RESTART ; 
 int /*<<< orphan*/  TRUE ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  WAITQ_ALL_PRIORITIES ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 struct turnstile* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

boolean_t
FUNC12(ipc_mqueue_t mqueue)
{
	ipc_kmsg_queue_t kmqueue;
	ipc_kmsg_t kmsg;
	boolean_t reap = FALSE;
	struct turnstile *send_turnstile = FUNC8(FUNC5(mqueue));

	FUNC2(!FUNC4(mqueue));

	/*
	 *	rouse all blocked senders
	 *	(don't boost anyone - we're tearing this queue down)
	 *	(never preposts)
	 */
	mqueue->imq_fullwaiters = FALSE;

	if (send_turnstile != TURNSTILE_NULL) {
		FUNC11(&send_turnstile->ts_waitq,
				   IPC_MQUEUE_FULL,
				   THREAD_RESTART,
				   WAITQ_ALL_PRIORITIES);
	}

	/*
	 * Move messages from the specified queue to the per-thread
	 * clean/drain queue while we have the mqueue lock.
	 */
	kmqueue = &mqueue->imq_messages;
	while ((kmsg = FUNC7(kmqueue)) != IKM_NULL) {
#if MACH_FLIPC
    if (MACH_NODE_VALID(kmsg->ikm_node) && FPORT_VALID(mqueue->imq_fport))
        flipc_msg_ack(kmsg->ikm_node, mqueue, TRUE);
#endif
		boolean_t first;
		first = FUNC6(kmsg);
		if (first)
			reap = first;
	}

	/*
	 * Wipe out message count, both for messages about to be
	 * reaped and for reserved space for (previously) woken senders.
	 * This is the indication to them that their reserved space is gone
	 * (the mqueue was destroyed).
	 */
	mqueue->imq_msgcount = 0;

	/* invalidate the waitq for subsequent mqueue operations */
	FUNC10(&mqueue->imq_wait_queue);

	/* clear out any preposting we may have done */
	FUNC9(&mqueue->imq_wait_queue);

	/*
	 * assert that we are destroying / invalidating a queue that's
	 * not a member of any other queue.
	 */
	FUNC2(mqueue->imq_preposts == 0);
	FUNC2(mqueue->imq_in_pset == 0);

	return reap;
}