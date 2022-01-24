#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct vnop_link_args {struct componentname* a_cnp; int /*<<< orphan*/  a_tdvp; int /*<<< orphan*/  a_vp; int /*<<< orphan*/  a_context; } ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int /*<<< orphan*/  nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct componentname {scalar_t__ cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_19__ {int nva_flags; } ;
struct TYPE_20__ {int n_flag; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  EPROTO ; 
 int EXDEV ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  NFSPROC4_COMPOUND ; 
 int /*<<< orphan*/  FUNC1 (struct nfsreq_secinfo_args*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NFSX_UNSIGNED ; 
 int NFS_FFLAG_TRIGGER_REFERRAL ; 
 int /*<<< orphan*/  NFS_OP_GETATTR ; 
 int /*<<< orphan*/  NFS_OP_LINK ; 
 int /*<<< orphan*/  NFS_OP_PUTFH ; 
 int /*<<< orphan*/  NFS_OP_RESTOREFH ; 
 int /*<<< orphan*/  NFS_OP_SAVEFH ; 
 int NMODIFIED ; 
 int NNEGNCENTRIES ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_IGNORE_WRITEERR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_getattr_bitmap ; 
 scalar_t__ FUNC6 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_secinfo_args*,struct nfsm_chain*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,struct nfsm_chain*,int /*<<< orphan*/ ,struct nfsmount*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct nfsm_chain*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int,struct nfsm_chain*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,struct nfsm_chain*,int /*<<< orphan*/ ,scalar_t__,struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC18 (int,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC20 (int,struct nfsm_chain*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC22 (int,struct nfsm_chain*,int) ; 
 int /*<<< orphan*/  FUNC23 (int,struct nfsm_chain*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC25 (int,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 

int
FUNC30(
	struct vnop_link_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		vnode_t a_tdvp;
		struct componentname *a_cnp;
		vfs_context_t a_context;
	} */ *ap)
{
	vfs_context_t ctx = ap->a_context;
	vnode_t vp = ap->a_vp;
	vnode_t tdvp = ap->a_tdvp;
	struct componentname *cnp = ap->a_cnp;
	int error = 0, lockerror = ENOENT, status;
	struct nfsmount *nmp;
	nfsnode_t np = FUNC2(vp);
	nfsnode_t tdnp = FUNC2(tdvp);
	int nfsvers, numops;
	u_int64_t xid, savedxid;
	struct nfsm_chain nmreq, nmrep;
	struct nfsreq_secinfo_args si;

	if (FUNC29(vp) != FUNC29(tdvp))
		return (EXDEV);

	nmp = FUNC3(vp);
	if (FUNC6(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);
	if (tdnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
		return (EINVAL);

	/*
	 * Push all writes to the server, so that the attribute cache
	 * doesn't get "out of sync" with the server.
	 * XXX There should be a better way!
	 */
	FUNC5(np, MNT_WAIT, FUNC28(ctx), V_IGNORE_WRITEERR);

	if ((error = FUNC9(tdnp, np, FUNC28(ctx))))
		return (error);

	FUNC1(&si, np, NULL, 0, NULL, 0);
	FUNC24(&nmreq);
	FUNC24(&nmrep);

	// PUTFH(SOURCE), SAVEFH, PUTFH(DIR), LINK, GETATTR(DIR), RESTOREFH, GETATTR
	numops = 7;
	FUNC18(error, &nmreq, 29 * NFSX_UNSIGNED + cnp->cn_namelen);
	FUNC15(error, &nmreq, "link", nmp->nm_minor_vers, numops);
	numops--;
	FUNC13(error, &nmreq, NFS_OP_PUTFH);
	FUNC16(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
	numops--;
	FUNC13(error, &nmreq, NFS_OP_SAVEFH);
	numops--;
	FUNC13(error, &nmreq, NFS_OP_PUTFH);
	FUNC16(error, &nmreq, nfsvers, tdnp->n_fhp, tdnp->n_fhsize);
	numops--;
	FUNC13(error, &nmreq, NFS_OP_LINK);
	FUNC17(error, &nmreq, cnp->cn_nameptr, cnp->cn_namelen, nmp);
	numops--;
	FUNC13(error, &nmreq, NFS_OP_GETATTR);
	FUNC14(error, &nmreq, nfs_getattr_bitmap, nmp, tdnp);
	numops--;
	FUNC13(error, &nmreq, NFS_OP_RESTOREFH);
	numops--;
	FUNC13(error, &nmreq, NFS_OP_GETATTR);
	FUNC14(error, &nmreq, nfs_getattr_bitmap, nmp, np);
	FUNC19(error, &nmreq);
	FUNC12(error, (numops == 0), EPROTO);
	FUNC27(error);
	error = FUNC11(tdnp, NULL, &nmreq, NFSPROC4_COMPOUND, ctx, &si, &nmrep, &xid, &status);

	if ((lockerror = FUNC8(tdnp, np))) {
		error = lockerror;
		goto nfsmout;
	}
	FUNC26(error, &nmrep);
	FUNC22(error, &nmrep, numops);
	FUNC25(error, &nmrep, NFS_OP_PUTFH);
	FUNC25(error, &nmrep, NFS_OP_SAVEFH);
	FUNC25(error, &nmrep, NFS_OP_PUTFH);
	FUNC25(error, &nmrep, NFS_OP_LINK);
	FUNC20(error, &nmrep, tdnp);
	/* directory attributes: if we don't get them, make sure to invalidate */
	FUNC25(error, &nmrep, NFS_OP_GETATTR);
	savedxid = xid;
	FUNC23(error, &nmrep, tdnp, nfsvers, &xid);
	if (error)
		FUNC0(tdnp);
	/* link attributes: if we don't get them, make sure to invalidate */
	FUNC25(error, &nmrep, NFS_OP_RESTOREFH);
	FUNC25(error, &nmrep, NFS_OP_GETATTR);
	xid = savedxid;
	FUNC23(error, &nmrep, np, nfsvers, &xid);
	if (error)
		FUNC0(np);
nfsmout:
	FUNC21(&nmreq);
	FUNC21(&nmrep);
	if (!lockerror)
		tdnp->n_flag |= NMODIFIED;
	/* Kludge: Map EEXIST => 0 assuming that it is a reply to a retry. */
	if (error == EEXIST)
		error = 0;
	if (!error && (tdnp->n_flag & NNEGNCENTRIES)) {
		tdnp->n_flag &= ~NNEGNCENTRIES;
		FUNC4(tdvp);
	}
	if (!lockerror)
		FUNC10(tdnp, np);
	FUNC7(tdnp, np);
	return (error);
}