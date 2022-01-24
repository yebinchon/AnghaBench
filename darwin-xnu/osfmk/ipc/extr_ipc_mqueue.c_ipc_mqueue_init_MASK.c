#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_mqueue_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  imq_klist; int /*<<< orphan*/  imq_fport; int /*<<< orphan*/  imq_fullwaiters; int /*<<< orphan*/  imq_qlimit; scalar_t__ imq_msgcount; scalar_t__ imq_seqno; int /*<<< orphan*/  imq_messages; int /*<<< orphan*/  imq_wait_queue; int /*<<< orphan*/  imq_set_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FPORT_NULL ; 
 int /*<<< orphan*/  MACH_PORT_QLIMIT_DEFAULT ; 
 int SYNC_POLICY_FIFO ; 
 int SYNC_POLICY_PORT ; 
 int SYNC_POLICY_PREPOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(
	ipc_mqueue_t	mqueue,
	boolean_t	is_set)
{
	if (is_set) {
		FUNC3(&mqueue->imq_set_queue,
			       SYNC_POLICY_FIFO|SYNC_POLICY_PREPOST,
			       NULL, NULL);
	} else {
		FUNC2(&mqueue->imq_wait_queue, SYNC_POLICY_FIFO | SYNC_POLICY_PORT);
		FUNC0(&mqueue->imq_messages);
		mqueue->imq_seqno = 0;
		mqueue->imq_msgcount = 0;
		mqueue->imq_qlimit = MACH_PORT_QLIMIT_DEFAULT;
		mqueue->imq_fullwaiters = FALSE;
#if MACH_FLIPC
		mqueue->imq_fport = FPORT_NULL;
#endif
	}
	FUNC1(&mqueue->imq_klist);
}