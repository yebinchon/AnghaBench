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
typedef  scalar_t__ uint32_t ;
struct nfsrv_uc_queue {int ucq_flags; int /*<<< orphan*/  ucq_lock; int /*<<< orphan*/  ucq_queue; } ;
struct nfsrv_uc_arg {int nua_qi; int nua_flags; int nua_waitflag; int /*<<< orphan*/  nua_so; int /*<<< orphan*/  nua_slp; } ;
typedef  int /*<<< orphan*/  socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int NFS_UC_QUEUED ; 
 int NFS_UC_QUEUE_SLEEPING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nfsrv_uc_arg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsrv_uc_queue_count ; 
 scalar_t__ nfsrv_uc_queue_limit ; 
 scalar_t__ nfsrv_uc_queue_max_seen ; 
 struct nfsrv_uc_queue* nfsrv_uc_queue_tbl ; 
 int /*<<< orphan*/  nua_svcq ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfsrv_uc_queue*) ; 

__attribute__((used)) static void
FUNC7(socket_t so, void *arg, int waitflag)
{
	struct nfsrv_uc_arg *uap = (struct nfsrv_uc_arg *)arg;
	int qi = uap->nua_qi;
	struct nfsrv_uc_queue *myqueue = &nfsrv_uc_queue_tbl[qi];

	FUNC3(myqueue->ucq_lock);
	FUNC0("nfsrv_uc_proxy called for %p (%p)\n", uap, uap->nua_slp);
	FUNC0("\tUp-call queued on %d for wakeup of %p\n", qi, myqueue);
	if (uap == NULL || uap->nua_flags & NFS_UC_QUEUED) {
		FUNC4(myqueue->ucq_lock);
		return;  /* Already queued or freed */
	}

	uap->nua_so = so;
	uap->nua_waitflag = waitflag;

	FUNC2(myqueue->ucq_queue, uap, nua_svcq);

	uap->nua_flags |= NFS_UC_QUEUED;
	if (myqueue->ucq_flags | NFS_UC_QUEUE_SLEEPING)
		FUNC6(myqueue);

#ifdef NFS_UC_Q_DEBUG
	{
		uint32_t count = OSIncrementAtomic(&nfsrv_uc_queue_count);
	
		/* This is a bit racey but just for debug */
		if (count > nfsrv_uc_queue_max_seen)
			nfsrv_uc_queue_max_seen = count;

		if (nfsrv_uc_queue_limit && count > nfsrv_uc_queue_limit) {
			panic("nfsd up-call queue limit exceeded\n");
		}
	}
#endif
	FUNC4(myqueue->ucq_lock);
}