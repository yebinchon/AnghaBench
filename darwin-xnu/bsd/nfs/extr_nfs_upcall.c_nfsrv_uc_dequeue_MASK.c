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
struct nfsrv_uc_arg {size_t nua_qi; int nua_flags; } ;
struct nfsrv_sock {struct nfsrv_uc_arg* ns_ua; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsrv_uc_arg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int NFS_UC_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nfsrv_uc_arg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsrv_uc_queue_count ; 
 struct nfsrv_uc_queue* nfsrv_uc_queue_tbl ; 
 int /*<<< orphan*/  nua_svcq ; 
 int /*<<< orphan*/  FUNC5 (char*,struct nfsrv_uc_arg*) ; 

void
FUNC6(struct nfsrv_sock *slp)
{
	struct nfsrv_uc_arg *ap = slp->ns_ua;
	struct nfsrv_uc_queue *myqueue = &nfsrv_uc_queue_tbl[ap->nua_qi];

	/*
	 * We assume that the socket up-calls have been stop and the socket
	 * is shutting down so no need for acquiring the lock to check that
	 * the flag is cleared.
	 */
	if (ap == NULL || (ap->nua_flags & NFS_UC_QUEUED) == 0)
		return;
	/* If we're queued we might race with nfsrv_uc_thread */
	FUNC3(myqueue->ucq_lock);
	if (ap->nua_flags & NFS_UC_QUEUED) {
		FUNC5("nfsrv_uc_dequeue remove %p\n", ap);
		FUNC2(myqueue->ucq_queue, ap, nua_svcq);
		ap->nua_flags &= ~NFS_UC_QUEUED;
#ifdef NFS_UC_Q_DEBUG
		OSDecrementAtomic(&nfsrv_uc_queue_count);
#endif		
	}
	FUNC0(slp->ns_ua, M_TEMP);
	slp->ns_ua = NULL;
	FUNC4(myqueue->ucq_lock);
}