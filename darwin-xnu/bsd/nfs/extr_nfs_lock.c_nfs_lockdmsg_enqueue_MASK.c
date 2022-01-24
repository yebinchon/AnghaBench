#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ lm_xid; } ;
struct TYPE_12__ {TYPE_1__ lmr_msg; } ;
typedef  TYPE_2__ LOCKD_MSG_REQUEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lmr_next ; 
 int /*<<< orphan*/  nfs_lock_msg_queue ; 
 int /*<<< orphan*/  nfs_pendlockq ; 

void
FUNC5(LOCKD_MSG_REQUEST *msgreq)
{
	LOCKD_MSG_REQUEST *mr;

	mr = FUNC3(&nfs_pendlockq, nfs_lock_msg_queue);
	if (!mr || (msgreq->lmr_msg.lm_xid > mr->lmr_msg.lm_xid)) {
		/* fast path: empty queue or new largest xid */
		FUNC2(&nfs_pendlockq, msgreq, lmr_next);
		return;
	}
	/* slow path: need to walk list to find insertion point */
	while (mr && (msgreq->lmr_msg.lm_xid > mr->lmr_msg.lm_xid)) {
		mr = FUNC4(mr, nfs_lock_msg_queue, lmr_next);
	}
	if (mr) {
		FUNC0(&nfs_pendlockq, mr, msgreq, lmr_next);
	} else {
		FUNC1(&nfs_pendlockq, msgreq, lmr_next);
	}
}