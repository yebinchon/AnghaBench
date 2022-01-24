#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
struct nfsmount {int /*<<< orphan*/  nm_lock; int /*<<< orphan*/  nm_dreturnq; int /*<<< orphan*/  nm_delegations; } ;
typedef  TYPE_3__* nfsnode_t ;
typedef  int /*<<< orphan*/  nfs_stateid ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_15__ {int /*<<< orphan*/  fh_len; int /*<<< orphan*/  fh_data; } ;
typedef  TYPE_4__ fhandle_t ;
struct TYPE_13__ {scalar_t__ tqe_next; } ;
struct TYPE_12__ {scalar_t__ tqe_next; } ;
struct TYPE_14__ {int n_openflags; int /*<<< orphan*/  n_openlock; TYPE_2__ n_dreturn; TYPE_1__ n_dlink; int /*<<< orphan*/  n_fhp; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_dstateid; } ;

/* Variables and functions */
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  NFSERR_EXPIRED ; 
 int NFSERR_LEASE_MOVED ; 
 int NFSERR_MOVED ; 
 scalar_t__ NFSNOLIST ; 
 struct nfsmount* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 int N_DELEG_MASK ; 
 int N_DELEG_RETURN ; 
 int N_DELEG_RETURNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_dlink ; 
 int /*<<< orphan*/  n_dreturn ; 
 int FUNC6 (TYPE_3__*,int) ; 
 int FUNC7 (struct nfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct nfsmount*) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 

int
FUNC15(nfsnode_t np, int flags, thread_t thd, kauth_cred_t cred)
{
	struct nfsmount *nmp;
	fhandle_t fh;
	nfs_stateid dstateid;
	int error;

	nmp = FUNC0(np);
	if (FUNC8(nmp))
		return (ENXIO);

	/* first, make sure the node's marked for delegation return */
	FUNC4(&np->n_openlock);
	np->n_openflags |= (N_DELEG_RETURN|N_DELEG_RETURNING);
	FUNC5(&np->n_openlock);

	/* make sure nobody else is using the delegation state */
	if ((error = FUNC14(np, NULL)))
		goto out;

	/* claim any delegated state */
	if ((error = FUNC6(np, flags)))
		goto out;

	/* return the delegation */
	FUNC4(&np->n_openlock);
	dstateid = np->n_dstateid;
	fh.fh_len = np->n_fhsize;
	FUNC3(np->n_fhp, &fh.fh_data, fh.fh_len);
	FUNC5(&np->n_openlock);
	error = FUNC7(FUNC0(np), fh.fh_data, fh.fh_len, &dstateid, flags, thd, cred);
	/* assume delegation is gone for all errors except ETIMEDOUT, NFSERR_*MOVED */
	if ((error != ETIMEDOUT) && (error != NFSERR_MOVED) && (error != NFSERR_LEASE_MOVED)) {
		FUNC4(&np->n_openlock);
		np->n_openflags &= ~N_DELEG_MASK;
		FUNC4(&nmp->nm_lock);
		if (np->n_dlink.tqe_next != NFSNOLIST) {
			FUNC2(&nmp->nm_delegations, np, n_dlink);
			np->n_dlink.tqe_next = NFSNOLIST;
		}
		FUNC5(&nmp->nm_lock);
		FUNC5(&np->n_openlock);
	}

out:
	/* make sure it's no longer on the return queue and clear the return flags */
	FUNC4(&nmp->nm_lock);
	if (np->n_dreturn.tqe_next != NFSNOLIST) {
		FUNC2(&nmp->nm_dreturnq, np, n_dreturn);
		np->n_dreturn.tqe_next = NFSNOLIST;
	}
	FUNC5(&nmp->nm_lock);
	FUNC4(&np->n_openlock);
	np->n_openflags &= ~(N_DELEG_RETURN|N_DELEG_RETURNING);
	FUNC5(&np->n_openlock);

	if (error) {
		FUNC1(np, "nfs4_delegation_return, error %d", error);
		if (error == ETIMEDOUT)
			FUNC11(nmp);
		if (FUNC10(error)) {
			/* make sure recovery happens */
			FUNC4(&nmp->nm_lock);
			FUNC12(nmp, FUNC9(error) ? NFSERR_EXPIRED : 0);
			FUNC5(&nmp->nm_lock);
		}
	}

	FUNC13(np);

	return (error);
}