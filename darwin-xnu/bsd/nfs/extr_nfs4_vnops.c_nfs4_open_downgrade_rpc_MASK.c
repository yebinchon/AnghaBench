#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_open_owner {int /*<<< orphan*/  noo_seqid; } ;
struct nfs_open_file {int /*<<< orphan*/  nof_stateid; int /*<<< orphan*/  nof_deny; int /*<<< orphan*/  nof_access; struct nfs_open_owner* nof_owner; } ;
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_10__ {int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (struct nfsreq_secinfo_args*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC1 (TYPE_1__*) ; 
 int NFSX_UNSIGNED ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_OPEN_DOWNGRADE ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  R_NOINTR ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_open_owner*) ; 
 int FUNC6 (struct nfs_open_owner*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_open_owner*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,int /*<<< orphan*/ ,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC17 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC19 (int,struct nfsm_chain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int,struct nfsm_chain*,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC22 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

int
FUNC27(
	nfsnode_t np,
	struct nfs_open_file *nofp,
	vfs_context_t ctx)
{
	struct nfs_open_owner *noop = nofp->nof_owner;
	struct nfsmount *nmp;
	int error, lockerror = ENOENT, status, nfsvers, numops;
	struct nfsm_chain nmreq, nmrep;
	u_int64_t xid;
	struct nfsreq_secinfo_args si;

	nmp = FUNC1(np);
	if (FUNC2(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;

	if ((error = FUNC6(noop, NULL)))
		return (error);

	FUNC0(&si, np, NULL, 0, NULL, 0);
	FUNC21(&nmreq);
	FUNC21(&nmrep);

	// PUTFH, OPEN_DOWNGRADE, GETATTR
	numops = 3;
	FUNC15(error, &nmreq, 23 * NFSX_UNSIGNED);
	FUNC12(error, &nmreq, "open_downgrd", nmp->nm_minor_vers, numops);
	numops--;
	FUNC10(error, &nmreq, NFS_OP_PUTFH);
	FUNC13(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC10(error, &nmreq, NFS_OP_OPEN_DOWNGRADE);
	FUNC14(error, &nmreq, &nofp->nof_stateid);
	FUNC10(error, &nmreq, noop->noo_seqid);
	FUNC10(error, &nmreq, nofp->nof_access);
	FUNC10(error, &nmreq, nofp->nof_deny);
	numops--;
	FUNC10(error, &nmreq, NFS_OP_GETATTR);
	FUNC11(error, &nmreq, nfs_getattr_bitmap, nmp, np);
	FUNC16(error, &nmreq);
	FUNC9(error, (numops == 0), EPROTO);
	FUNC24(error);
	error = FUNC8(np, NULL, &nmreq, NFSPROC4_COMPOUND,
			FUNC25(ctx), FUNC26(ctx),
			&si, R_NOINTR, &nmrep, &xid, &status);

	if ((lockerror = FUNC3(np)))
		error = lockerror;
	FUNC23(error, &nmrep);
	FUNC18(error, &nmrep, numops);
	FUNC22(error, &nmrep, NFS_OP_PUTFH);
	FUNC24(error);
	FUNC22(error, &nmrep, NFS_OP_OPEN_DOWNGRADE);
	FUNC7(noop, NULL, error);
	FUNC19(error, &nmrep, &nofp->nof_stateid);
	FUNC22(error, &nmrep, NFS_OP_GETATTR);
	FUNC20(error, &nmrep, np, nfsvers, &xid);
nfsmout:
	if (!lockerror)
		FUNC4(np);
	FUNC5(noop);
	FUNC17(&nmreq);
	FUNC17(&nmrep);
	return (error);
}