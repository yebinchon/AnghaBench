#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int u_int32_t ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_auth; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_15__ {int nva_flags; } ;
struct TYPE_16__ {int n_flag; int* n_access; int /*<<< orphan*/ * n_accessstamp; int /*<<< orphan*/ * n_accessuid; int /*<<< orphan*/  n_auth; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;
struct TYPE_14__ {int n_flag; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_ACCESS_DELETE ; 
 int NFS_ACCESS_EXTEND ; 
 int NFS_ACCESS_MODIFY ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int NFS_OP_ACCESS ; 
 int NFS_OP_GETATTR ; 
 int NFS_OP_PUTFH ; 
 int NISDOTZFSCHILD ; 
 scalar_t__ NULLVP ; 
 TYPE_10__* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*) ; 
 scalar_t__ nfs_access_delete ; 
 scalar_t__ nfs_access_dotzfs ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC8 (struct nfsmount*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC19 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC20 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC21 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC22 (int,struct nfsm_chain*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC24 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC25 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__) ; 

int
FUNC31(nfsnode_t np, u_int32_t *access, int rpcflags, vfs_context_t ctx)
{
	int error = 0, lockerror = ENOENT, status, numops, slot;
	u_int64_t xid;
	struct nfsm_chain nmreq, nmrep;
	struct timeval now;
	uint32_t access_result = 0, supported = 0, missing;
	struct nfsmount *nmp = FUNC1(np);
	int nfsvers = nmp->nm_vers;
	uid_t uid;
	struct nfsreq_secinfo_args si;

	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (0);

	FUNC0(&si, np, NULL, 0, NULL, 0);
	FUNC23(&nmreq);
	FUNC23(&nmrep);

	// PUTFH, ACCESS, GETATTR
	numops = 3;
	FUNC18(error, &nmreq, 17 * NFSX_UNSIGNED);
	FUNC16(error, &nmreq, "access", nmp->nm_minor_vers, numops);
	numops--;
	FUNC14(error, &nmreq, NFS_OP_PUTFH);
	FUNC17(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC14(error, &nmreq, NFS_OP_ACCESS);
	FUNC14(error, &nmreq, *access);
	numops--;
	FUNC14(error, &nmreq, NFS_OP_GETATTR);
	FUNC15(error, &nmreq, nfs_getattr_bitmap, nmp, np);
	FUNC19(error, &nmreq);
	FUNC13(error, (numops == 0), EPROTO);
	FUNC26(error);
	error = FUNC12(np, NULL, &nmreq, NFSPROC4_COMPOUND,
		FUNC27(ctx), FUNC28(ctx),
		&si, rpcflags, &nmrep, &xid, &status);

	if ((lockerror = FUNC10(np)))
		error = lockerror;
	FUNC25(error, &nmrep);
	FUNC21(error, &nmrep, numops);
	FUNC24(error, &nmrep, NFS_OP_PUTFH);
	FUNC24(error, &nmrep, NFS_OP_ACCESS);
	FUNC21(error, &nmrep, supported);
	FUNC21(error, &nmrep, access_result);
	FUNC26(error);
	if ((missing = (*access & ~supported))) {
		/* missing support for something(s) we wanted */
		if (missing & NFS_ACCESS_DELETE) {
			/*
			 * If the server doesn't report DELETE (possible
			 * on UNIX systems), we'll assume that it is OK
			 * and just let any subsequent delete action fail
			 * if it really isn't deletable.
			 */
			access_result |= NFS_ACCESS_DELETE;
		}
	}
	/* ".zfs" subdirectories may erroneously give a denied answer for modify/delete */
	if (nfs_access_dotzfs) {
		vnode_t dvp = NULLVP;
		if (np->n_flag & NISDOTZFSCHILD) /* may be able to create/delete snapshot dirs */
			access_result |= (NFS_ACCESS_MODIFY|NFS_ACCESS_EXTEND|NFS_ACCESS_DELETE);
		else if (((dvp = FUNC29(FUNC2(np))) != NULLVP) && (FUNC3(dvp)->n_flag & NISDOTZFSCHILD))
			access_result |= NFS_ACCESS_DELETE; /* may be able to delete snapshot dirs */
		if (dvp != NULLVP)
			FUNC30(dvp);
	}
	/* Some servers report DELETE support but erroneously give a denied answer. */
	if (nfs_access_delete && (*access & NFS_ACCESS_DELETE) && !(access_result & NFS_ACCESS_DELETE))
		access_result |= NFS_ACCESS_DELETE;
	FUNC24(error, &nmrep, NFS_OP_GETATTR);
	FUNC22(error, &nmrep, np, nfsvers, &xid);
	FUNC26(error);

	if (FUNC8(nmp)) {
		error = ENXIO;
	}
	FUNC26(error);

	if (FUNC4(np->n_auth) || FUNC4(nmp->nm_auth)) {
		uid = FUNC7(FUNC28(ctx));
	} else {
		uid = FUNC5(FUNC28(ctx));
	}
	slot = FUNC9(np, uid, 1);
	np->n_accessuid[slot] = uid;
	FUNC6(&now);
	np->n_accessstamp[slot] = now.tv_sec;
	np->n_access[slot] = access_result;

	/* pass back the access returned with this request */
	*access = np->n_access[slot];
nfsmout:
	if (!lockerror)
		FUNC11(np);
	FUNC20(&nmreq);
	FUNC20(&nmrep);
	return (error);
}