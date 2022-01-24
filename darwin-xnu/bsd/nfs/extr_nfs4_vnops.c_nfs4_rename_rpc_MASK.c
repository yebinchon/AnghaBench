#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_16__ {int nva_flags; } ;
struct TYPE_17__ {int /*<<< orphan*/  n_flag; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC1 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC2 (TYPE_2__*) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_OP_RENAME ; 
 int /*<<< orphan*/  NFS_OP_RESTOREFH ; 
 int /*<<< orphan*/  NFS_OP_SAVEFH ; 
 int /*<<< orphan*/  NMODIFIED ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 
 int FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct nfsm_chain*,char*,int,struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC20 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 

int
FUNC23(
	nfsnode_t fdnp,
	char *fnameptr,
	int fnamelen,
	nfsnode_t tdnp,
	char *tnameptr,
	int tnamelen,
	vfs_context_t ctx)
{
	int error = 0, lockerror = ENOENT, status, nfsvers, numops;
	struct nfsmount *nmp;
	u_int64_t xid, savedxid;
	struct nfsm_chain nmreq, nmrep;
	struct nfsreq_secinfo_args si;

	nmp = FUNC2(fdnp);
	if (FUNC3(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	if (fdnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);
	if (tdnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);

	FUNC1(&si, fdnp, NULL, 0, NULL, 0);
	FUNC19(&nmreq);
	FUNC19(&nmrep);

	// PUTFH(FROM), SAVEFH, PUTFH(TO), RENAME, GETATTR(TO), RESTOREFH, GETATTR(FROM)
	numops = 7;
	FUNC13(error, &nmreq, 30 * NFSX_UNSIGNED + fnamelen + tnamelen);
	FUNC10(error, &nmreq, "rename", nmp->nm_minor_vers, numops);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_PUTFH);
	FUNC11(error, &nmreq, nfsvers, fdnp->n_fhp, fdnp->n_fhsize);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_SAVEFH);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_PUTFH);
	FUNC11(error, &nmreq, nfsvers, tdnp->n_fhp, tdnp->n_fhsize);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_RENAME);
	FUNC12(error, &nmreq, fnameptr, fnamelen, nmp);
	FUNC12(error, &nmreq, tnameptr, tnamelen, nmp);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_GETATTR);
	FUNC9(error, &nmreq, nfs_getattr_bitmap, nmp, tdnp);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_RESTOREFH);
	numops--;
	FUNC8(error, &nmreq, NFS_OP_GETATTR);
	FUNC9(error, &nmreq, nfs_getattr_bitmap, nmp, fdnp);
	FUNC14(error, &nmreq);
	FUNC7(error, (numops == 0), EPROTO);
	FUNC22(error);

	error = FUNC6(fdnp, NULL, &nmreq, NFSPROC4_COMPOUND, ctx, &si, &nmrep, &xid, &status);

	if ((lockerror = FUNC4(fdnp, tdnp)))
		error = lockerror;
	FUNC21(error, &nmrep);
	FUNC17(error, &nmrep, numops);
	FUNC20(error, &nmrep, NFS_OP_PUTFH);
	FUNC20(error, &nmrep, NFS_OP_SAVEFH);
	FUNC20(error, &nmrep, NFS_OP_PUTFH);
	FUNC20(error, &nmrep, NFS_OP_RENAME);
	FUNC15(error, &nmrep, fdnp);
	FUNC15(error, &nmrep, tdnp);
	/* directory attributes: if we don't get them, make sure to invalidate */
	FUNC20(error, &nmrep, NFS_OP_GETATTR);
	savedxid = xid;
	FUNC18(error, &nmrep, tdnp, nfsvers, &xid);
	if (error && !lockerror)
		FUNC0(tdnp);
	FUNC20(error, &nmrep, NFS_OP_RESTOREFH);
	FUNC20(error, &nmrep, NFS_OP_GETATTR);
	xid = savedxid;
	FUNC18(error, &nmrep, fdnp, nfsvers, &xid);
	if (error && !lockerror)
		FUNC0(fdnp);
nfsmout:
	FUNC16(&nmreq);
	FUNC16(&nmrep);
	if (!lockerror) {
		fdnp->n_flag |= NMODIFIED;
		tdnp->n_flag |= NMODIFIED;
		FUNC5(fdnp, tdnp);
	}
	return (error);
}