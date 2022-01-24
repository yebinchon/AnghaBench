#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {scalar_t__ nm_stategenid; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_open_file {TYPE_6__* nof_owner; int /*<<< orphan*/  nof_stateid; } ;
struct nfs_lock_owner {scalar_t__ nlo_stategenid; int nlo_seqid; int /*<<< orphan*/  nlo_stateid; TYPE_6__* nlo_open_owner; } ;
struct nfs_file_lock {int nfl_flags; scalar_t__ nfl_type; int /*<<< orphan*/  nfl_end; int /*<<< orphan*/  nfl_start; struct nfs_lock_owner* nfl_owner; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_17__ {int noo_seqid; } ;
struct TYPE_15__ {int nva_flags; } ;
struct TYPE_16__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 scalar_t__ F_WRLCK ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC1 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int NFS_FILE_LOCK_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NFS_LOCK_TYPE_READ ; 
 int NFS_LOCK_TYPE_READW ; 
 int NFS_LOCK_TYPE_WRITE ; 
 int NFS_LOCK_TYPE_WRITEW ; 
 int NFS_OP_GETATTR ; 
 int NFS_OP_LOCK ; 
 int NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_VER4 ; 
 int R_NOINTR ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_lock_owner*) ; 
 int FUNC4 (struct nfs_lock_owner*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nfsmount*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_open_file*) ; 
 int FUNC9 (struct nfs_open_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int FUNC12 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,struct nfs_lock_owner*,int) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,struct nfsm_chain*,struct nfsmount*,struct nfs_lock_owner*) ; 
 int /*<<< orphan*/  FUNC22 (int,struct nfsm_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC24 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC25 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC26 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC27 (int,struct nfsm_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int,struct nfsm_chain*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC30 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC31 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 

int
FUNC33(
	nfsnode_t np,
	struct nfs_open_file *nofp,
	struct nfs_file_lock *nflp,
	int reclaim,
	int flags,
	thread_t thd,
	kauth_cred_t cred)
{
	struct nfs_lock_owner *nlop = nflp->nfl_owner;
	struct nfsmount *nmp;
	struct nfsm_chain nmreq, nmrep;
	uint64_t xid;
	uint32_t locktype;
	int error = 0, lockerror = ENOENT, newlocker, numops, status;
	struct nfsreq_secinfo_args si;

	nmp = FUNC1(np);
	if (FUNC5(nmp))
		return (ENXIO);
	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);

	newlocker = (nlop->nlo_stategenid != nmp->nm_stategenid);
	locktype = (nflp->nfl_flags & NFS_FILE_LOCK_WAIT) ?
			((nflp->nfl_type == F_WRLCK) ?
				NFS_LOCK_TYPE_WRITEW :
				NFS_LOCK_TYPE_READW) :
			((nflp->nfl_type == F_WRLCK) ?
				NFS_LOCK_TYPE_WRITE :
				NFS_LOCK_TYPE_READ);
	if (newlocker) {
		error = FUNC9(nofp, thd);
		if (error)
			return (error);
		error = FUNC12(nofp->nof_owner, thd);
		if (error) {
			FUNC8(nofp);
			return (error);
		}
		if (!nlop->nlo_open_owner) {
			FUNC11(nofp->nof_owner);
			nlop->nlo_open_owner = nofp->nof_owner;
		}
	}
	error = FUNC4(nlop, thd);
	if (error) {
		if (newlocker) {
			FUNC10(nofp->nof_owner);
			FUNC8(nofp);
		}
		return (error);
	}

	FUNC0(&si, np, NULL, 0, NULL, 0);
	FUNC29(&nmreq);
	FUNC29(&nmrep);

	// PUTFH, GETATTR, LOCK
	numops = 3;
	FUNC23(error, &nmreq, 33 * NFSX_UNSIGNED);
	FUNC19(error, &nmreq, "lock", nmp->nm_minor_vers, numops);
	numops--;
	FUNC16(error, &nmreq, NFS_OP_PUTFH);
	FUNC20(error, &nmreq, NFS_VER4, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC16(error, &nmreq, NFS_OP_GETATTR);
	FUNC18(error, &nmreq, nfs_getattr_bitmap, nmp, np);
	numops--;
	FUNC16(error, &nmreq, NFS_OP_LOCK);
	FUNC16(error, &nmreq, locktype);
	FUNC16(error, &nmreq, reclaim);
	FUNC17(error, &nmreq, nflp->nfl_start);
	FUNC17(error, &nmreq, FUNC2(nflp->nfl_start, nflp->nfl_end));
	FUNC16(error, &nmreq, newlocker);
	if (newlocker) {
		FUNC16(error, &nmreq, nofp->nof_owner->noo_seqid);
		FUNC22(error, &nmreq, &nofp->nof_stateid);
		FUNC16(error, &nmreq, nlop->nlo_seqid);
		FUNC21(error, &nmreq, nmp, nlop);
	} else {
		FUNC22(error, &nmreq, &nlop->nlo_stateid);
		FUNC16(error, &nmreq, nlop->nlo_seqid);
	}
	FUNC24(error, &nmreq);
	FUNC15(error, (numops == 0), EPROTO);
	FUNC32(error);

	error = FUNC14(np, NULL, &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, flags|R_NOINTR, &nmrep, &xid, &status);

	if ((lockerror = FUNC6(np)))
		error = lockerror;
	FUNC31(error, &nmrep);
	FUNC26(error, &nmrep, numops);
	FUNC30(error, &nmrep, NFS_OP_PUTFH);
	FUNC32(error);
	FUNC30(error, &nmrep, NFS_OP_GETATTR);
	FUNC28(error, &nmrep, np, NFS_VER4, &xid);
	FUNC32(error);
	FUNC30(error, &nmrep, NFS_OP_LOCK);
	FUNC13(newlocker ? nofp->nof_owner : NULL, nlop, error);
	FUNC27(error, &nmrep, &nlop->nlo_stateid);

	/* Update the lock owner's stategenid once it appears the server has state for it. */
	/* We determine this by noting the request was successful (we got a stateid). */
	if (newlocker && !error)
		nlop->nlo_stategenid = nmp->nm_stategenid;
nfsmout:
	if (!lockerror)
		FUNC7(np);
	FUNC3(nlop);
	if (newlocker) {
		FUNC10(nofp->nof_owner);
		FUNC8(nofp);
	}
	FUNC25(&nmreq);
	FUNC25(&nmrep);
	return (error);
}