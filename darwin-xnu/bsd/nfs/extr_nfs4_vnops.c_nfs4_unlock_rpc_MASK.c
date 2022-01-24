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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_lock_owner {int /*<<< orphan*/  nlo_stateid; int /*<<< orphan*/  nlo_seqid; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_11__ {int nva_flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int F_WRLCK ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC1 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_LOCK_TYPE_READ ; 
 int /*<<< orphan*/  NFS_LOCK_TYPE_WRITE ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_LOCKU ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_VER4 ; 
 int R_NOINTR ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_lock_owner*) ; 
 int FUNC4 (struct nfs_lock_owner*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct nfsmount*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct nfs_lock_owner*,int) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC19 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC20 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC21 (int,struct nfsm_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int,struct nfsm_chain*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC24 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 

int
FUNC27(
	nfsnode_t np,
	struct nfs_lock_owner *nlop,
	int type,
	uint64_t start,
	uint64_t end,
	int flags,
	thread_t thd,
	kauth_cred_t cred)
{
	struct nfsmount *nmp;
	struct nfsm_chain nmreq, nmrep;
	uint64_t xid;
	int error = 0, lockerror = ENOENT, numops, status;
	struct nfsreq_secinfo_args si;

	nmp = FUNC1(np);
	if (FUNC5(nmp))
		return (ENXIO);
	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);

	error = FUNC4(nlop, NULL);
	if (error)
		return (error);

	FUNC0(&si, np, NULL, 0, NULL, 0);
	FUNC23(&nmreq);
	FUNC23(&nmrep);

	// PUTFH, GETATTR, LOCKU
	numops = 3;
	FUNC17(error, &nmreq, 26 * NFSX_UNSIGNED);
	FUNC14(error, &nmreq, "unlock", nmp->nm_minor_vers, numops);
	numops--;
	FUNC11(error, &nmreq, NFS_OP_PUTFH);
	FUNC15(error, &nmreq, NFS_VER4, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC11(error, &nmreq, NFS_OP_GETATTR);
	FUNC13(error, &nmreq, nfs_getattr_bitmap, nmp, np);
	numops--;
	FUNC11(error, &nmreq, NFS_OP_LOCKU);
	FUNC11(error, &nmreq, (type == F_WRLCK) ? NFS_LOCK_TYPE_WRITE : NFS_LOCK_TYPE_READ);
	FUNC11(error, &nmreq, nlop->nlo_seqid);
	FUNC16(error, &nmreq, &nlop->nlo_stateid);
	FUNC12(error, &nmreq, start);
	FUNC12(error, &nmreq, FUNC2(start, end));
	FUNC18(error, &nmreq);
	FUNC10(error, (numops == 0), EPROTO);
	FUNC26(error);

	error = FUNC9(np, NULL, &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, flags|R_NOINTR, &nmrep, &xid, &status);

	if ((lockerror = FUNC6(np)))
		error = lockerror;
	FUNC25(error, &nmrep);
	FUNC20(error, &nmrep, numops);
	FUNC24(error, &nmrep, NFS_OP_PUTFH);
	FUNC26(error);
	FUNC24(error, &nmrep, NFS_OP_GETATTR);
	FUNC22(error, &nmrep, np, NFS_VER4, &xid);
	FUNC26(error);
	FUNC24(error, &nmrep, NFS_OP_LOCKU);
	FUNC8(NULL, nlop, error);
	FUNC21(error, &nmrep, &nlop->nlo_stateid);
nfsmout:
	if (!lockerror)
		FUNC7(np);
	FUNC3(nlop);
	FUNC19(&nmreq);
	FUNC19(&nmrep);
	return (error);
}