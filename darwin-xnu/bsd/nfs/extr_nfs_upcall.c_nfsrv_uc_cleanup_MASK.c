#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nfsrv_uc_queue {int /*<<< orphan*/  ucq_lock; int /*<<< orphan*/  ucq_queue; } ;
struct nfsrv_uc_arg {int /*<<< orphan*/  nua_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int NFS_UC_HASH_SZ ; 
 int /*<<< orphan*/  NFS_UC_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfsrv_uc_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nfsrv_uc_arg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct nfsrv_uc_queue* nfsrv_uc_queue_tbl ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  nua_svcq ; 

void
FUNC7(void)
{
	int i;

	FUNC0("Entering nfsrv_uc_cleanup\n");

	/*
	 * Every thing should be dequeued at this point or will be as sockets are closed
	 * but to be safe, we'll make sure.
	 */
	for (i = 0; i < NFS_UC_HASH_SZ; i++) {
		struct nfsrv_uc_queue *queue = &nfsrv_uc_queue_tbl[i];

		FUNC4(queue->ucq_lock);
		while (!FUNC1(queue->ucq_queue)) {
			struct nfsrv_uc_arg *ep = FUNC2(queue->ucq_queue);
			FUNC3(queue->ucq_queue, ep, nua_svcq);
			ep->nua_flags &= ~NFS_UC_QUEUED;
		}
		FUNC5(queue->ucq_lock);
	}

	FUNC6();
}