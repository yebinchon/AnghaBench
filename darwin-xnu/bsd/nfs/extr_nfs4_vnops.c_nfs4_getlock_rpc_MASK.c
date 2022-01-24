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
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_lock_owner {int dummy; } ;
struct flock {scalar_t__ l_type; scalar_t__ l_start; int /*<<< orphan*/  l_whence; scalar_t__ l_pid; scalar_t__ l_len; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_11__ {int nva_flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 scalar_t__ F_RDLCK ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ F_WRLCK ; 
 int NFSERR_DENIED ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC1 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int NFS_LOCK_TYPE_READ ; 
 int NFS_LOCK_TYPE_WRITE ; 
 int NFS_OP_GETATTR ; 
 int NFS_OP_LOCKT ; 
 int NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_VER4 ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,struct nfsm_chain*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,struct nfsmount*,struct nfs_lock_owner*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC16 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int,struct nfsm_chain*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC20 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC21 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC22 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 

int
FUNC24(
	nfsnode_t np,
	struct nfs_lock_owner *nlop,
	struct flock *fl,
	uint64_t start,
	uint64_t end,
	vfs_context_t ctx)
{
	struct nfsmount *nmp;
	struct nfsm_chain nmreq, nmrep;
	uint64_t xid, val64 = 0;
	uint32_t val = 0;
	int error = 0, lockerror, numops, status;
	struct nfsreq_secinfo_args si;

	nmp = FUNC1(np);
	if (FUNC3(nmp))
		return (ENXIO);
	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);

	lockerror = ENOENT;
	FUNC0(&si, np, NULL, 0, NULL, 0);
	FUNC20(&nmreq);
	FUNC20(&nmrep);

	// PUTFH, GETATTR, LOCKT
	numops = 3;
	FUNC14(error, &nmreq, 26 * NFSX_UNSIGNED);
	FUNC11(error, &nmreq, "locktest", nmp->nm_minor_vers, numops);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_PUTFH);
	FUNC12(error, &nmreq, NFS_VER4, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_GETATTR);
	FUNC10(error, &nmreq, nfs_getattr_bitmap, nmp, np);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_LOCKT);
	FUNC8(error, &nmreq, (fl->l_type == F_WRLCK) ? NFS_LOCK_TYPE_WRITE : NFS_LOCK_TYPE_READ);
	FUNC9(error, &nmreq, start);
	FUNC9(error, &nmreq, FUNC2(start, end));
	FUNC13(error, &nmreq, nmp, nlop);
	FUNC15(error, &nmreq);
	FUNC7(error, (numops == 0), EPROTO);
	FUNC23(error);

	error = FUNC6(np, NULL, &nmreq, NFSPROC4_COMPOUND, ctx, &si, &nmrep, &xid, &status);

	if ((lockerror = FUNC4(np)))
		error = lockerror;
	FUNC22(error, &nmrep);
	FUNC17(error, &nmrep, numops);
	FUNC21(error, &nmrep, NFS_OP_PUTFH);
	FUNC23(error);
	FUNC21(error, &nmrep, NFS_OP_GETATTR);
	FUNC19(error, &nmrep, np, NFS_VER4, &xid);
	FUNC23(error);
	FUNC21(error, &nmrep, NFS_OP_LOCKT);
	if (error == NFSERR_DENIED) {
		error = 0;
		FUNC18(error, &nmrep, fl->l_start);
		FUNC18(error, &nmrep, val64);
		fl->l_len = (val64 == UINT64_MAX) ? 0 : val64;
		FUNC17(error, &nmrep, val);
		fl->l_type = (val == NFS_LOCK_TYPE_WRITE) ? F_WRLCK : F_RDLCK;
		fl->l_pid = 0;
		fl->l_whence = SEEK_SET;
	} else if (!error) {
		fl->l_type = F_UNLCK;
	}
nfsmout:
	if (!lockerror)
		FUNC5(np);
	FUNC16(&nmreq);
	FUNC16(&nmrep);
	return (error);
}