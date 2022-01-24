#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int u_int32_t ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct nfsmount {int /*<<< orphan*/  nm_auth; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_9__ {int* n_access; int n_flag; int /*<<< orphan*/ * n_accessstamp; int /*<<< orphan*/ * n_accessuid; int /*<<< orphan*/  n_auth; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  NFSPROC_ACCESS ; 
 struct nfsmount* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NFSX_UNSIGNED ; 
 int NFS_ACCESS_DELETE ; 
 int NFS_ACCESS_EXTEND ; 
 int NFS_ACCESS_MODIFY ; 
 int /*<<< orphan*/  NFS_VER3 ; 
 int NISDOTZFSCHILD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 scalar_t__ nfs_access_dotzfs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nfsmount*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

int
FUNC22(nfsnode_t np, u_int32_t *access, int rpcflags, vfs_context_t ctx)
{
	int error = 0, lockerror = ENOENT, status, slot;
	uint32_t access_result = 0;
	u_int64_t xid;
	struct nfsm_chain nmreq, nmrep;
	struct nfsmount *nmp;
	struct timeval now;
	uid_t uid;

	FUNC17(&nmreq);
	FUNC17(&nmrep);

	FUNC13(error, &nmreq, FUNC1(NFS_VER3) + NFSX_UNSIGNED);
	FUNC12(error, &nmreq, NFS_VER3, np->n_fhp, np->n_fhsize);
	FUNC11(error, &nmreq, *access);
	FUNC14(error, &nmreq);
	FUNC19(error);
	error = FUNC10(np, NULL, &nmreq, NFSPROC_ACCESS,
		FUNC20(ctx), FUNC21(ctx),
		NULL, rpcflags, &nmrep, &xid, &status);
	if ((lockerror = FUNC8(np)))
		error = lockerror;
	FUNC18(error, &nmrep, np, &xid);
	if (!error)
		error = status;
	FUNC16(error, &nmrep, access_result);
	FUNC19(error);

	/* XXXab do we really need mount here, also why are we doing access cache management here? */
	nmp = FUNC0(np);
	if (FUNC6(nmp)) {
		error = ENXIO;
	}
	FUNC19(error);

	if (FUNC2(np->n_auth) || FUNC2(nmp->nm_auth)) {
		uid = FUNC5(FUNC21(ctx));
	} else {
		uid = FUNC3(FUNC21(ctx));
	}
	slot = FUNC7(np, uid, 1);
	np->n_accessuid[slot] = uid;
	FUNC4(&now);
	np->n_accessstamp[slot] = now.tv_sec;
	np->n_access[slot] = access_result;

	/*
	 * If we asked for DELETE but didn't get it, the server
	 * may simply not support returning that bit (possible
	 * on UNIX systems).  So, we'll assume that it is OK,
	 * and just let any subsequent delete action fail if it
	 * really isn't deletable.
	 */
	if ((*access & NFS_ACCESS_DELETE) &&
	    !(np->n_access[slot] & NFS_ACCESS_DELETE))
		np->n_access[slot] |= NFS_ACCESS_DELETE;
	/* ".zfs" subdirectories may erroneously give a denied answer for add/remove */
	if (nfs_access_dotzfs && (np->n_flag & NISDOTZFSCHILD))
		np->n_access[slot] |= (NFS_ACCESS_MODIFY|NFS_ACCESS_EXTEND|NFS_ACCESS_DELETE);
	/* pass back the access returned with this request */
	*access = np->n_access[slot];
nfsmout:
	if (!lockerror)
		FUNC9(np);
	FUNC15(&nmreq);
	FUNC15(&nmrep);
	return (error);
}