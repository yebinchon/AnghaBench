#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnop_rename_args {struct componentname* a_fcnp; struct componentname* a_tcnp; int /*<<< orphan*/ * a_tvp; int /*<<< orphan*/ * a_tdvp; int /*<<< orphan*/ * a_fvp; int /*<<< orphan*/ * a_fdvp; int /*<<< orphan*/  a_context; } ;
struct nfsmount {int nm_vers; TYPE_1__* nm_funcs; } ;
struct nfs_vattr {int nva_nlink; } ;
struct componentname {int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/ * mount_t ;
struct TYPE_29__ {int n_hflag; int n_openflags; int n_flag; int /*<<< orphan*/ * n_parent; int /*<<< orphan*/  n_sillyrename; } ;
struct TYPE_28__ {int (* nf_rename_rpc ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int EXDEV ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC2 (TYPE_2__*) ; 
 int NFS_VER4 ; 
 int /*<<< orphan*/  NGA_CACHED ; 
 int NHHASHED ; 
 int NHLOCKED ; 
 int NHLOCKWANT ; 
 int NMODIFIED ; 
 int NNEGNCENTRIES ; 
 int N_DELEG_MASK ; 
 int /*<<< orphan*/  PINOD ; 
 scalar_t__ VDIR ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct componentname*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_hash ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,struct nfs_vattr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_2__*,struct componentname*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  nfs_node_hash_mutex ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int FUNC16 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (TYPE_2__*,TYPE_2__*,struct componentname*,int /*<<< orphan*/ ) ; 
 int FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 

int
FUNC31(
	struct vnop_rename_args  /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_fdvp;
		vnode_t a_fvp;
		struct componentname *a_fcnp;
		vnode_t a_tdvp;
		vnode_t a_tvp;
		struct componentname *a_tcnp;
		vfs_context_t a_context;
	} */ *ap)
{
	vfs_context_t ctx = ap->a_context;
	vnode_t fdvp = ap->a_fdvp;
	vnode_t fvp = ap->a_fvp;
	vnode_t tdvp = ap->a_tdvp;
	vnode_t tvp = ap->a_tvp;
	nfsnode_t fdnp, fnp, tdnp, tnp;
	struct componentname *tcnp = ap->a_tcnp;
	struct componentname *fcnp = ap->a_fcnp;
	int error, nfsvers, inuse=0, tvprecycle=0, locked=0;
	mount_t fmp, tdmp, tmp;
	struct nfs_vattr nvattr;
	struct nfsmount *nmp;

	fdnp = FUNC3(fdvp);
	fnp = FUNC3(fvp);
	tdnp = FUNC3(tdvp);
	tnp = tvp ? FUNC3(tvp) : NULL;

	nmp = FUNC2(fdnp);
	if (FUNC12(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;

	error = FUNC16(fdnp, fnp, tdnp, tnp, FUNC20(ctx));
	if (error)
		return (error);

	if (tvp && (tvp != fvp)) {
		/* lock the node while we rename over the existing file */
		FUNC6(nfs_node_hash_mutex);
		while (tnp->n_hflag & NHLOCKED) {
			tnp->n_hflag |= NHLOCKWANT;
			FUNC8(tnp, nfs_node_hash_mutex, PINOD, "nfs_rename", NULL);
		}
		tnp->n_hflag |= NHLOCKED;
		FUNC7(nfs_node_hash_mutex);
		locked = 1;
	}

	/* Check for cross-device rename */
	fmp = FUNC24(fvp);
	tmp = tvp ? FUNC24(tvp) : NULL;
	tdmp = FUNC24(tdvp);
	if ((fmp != tdmp) || (tvp && (fmp != tmp))) {
		error = EXDEV;
		goto out;
	}

	/* XXX prevent renaming from/over a sillyrenamed file? */

	/*
	 * If the tvp exists and is in use, sillyrename it before doing the
	 * rename of the new file over it.
	 * XXX Can't sillyrename a directory.
	 * Don't sillyrename if source and target are same vnode (hard
	 * links or case-variants)
	 */
	if (tvp && (tvp != fvp))
		inuse = FUNC23(tvp, 0);
	if (inuse && !tnp->n_sillyrename && (FUNC29(tvp) != VDIR)) {
		error = FUNC18(tdnp, tnp, tcnp, ctx);
		if (error) {
			/* sillyrename failed. Instead of pressing on, return error */
			goto out; /* should not be ENOENT. */
		} else {
			/* sillyrename succeeded.*/
			tvp = NULL;
		}
	} else if (tvp && (nmp->nm_vers >= NFS_VER4) && (tnp->n_openflags & N_DELEG_MASK)) {
		FUNC9(tnp, 0, FUNC20(ctx), FUNC21(ctx));
	}

	error = nmp->nm_funcs->nf_rename_rpc(fdnp, fcnp->cn_nameptr, fcnp->cn_namelen,
			tdnp, tcnp->cn_nameptr, tcnp->cn_namelen, ctx);

	/*
	 * Kludge: Map ENOENT => 0 assuming that it is a reply to a retry.
	 */
	if (error == ENOENT)
		error = 0;

	if (tvp && (tvp != fvp) && !tnp->n_sillyrename) {
		FUNC15(tnp);
		tvprecycle = (!error && !FUNC23(tvp, 0) &&
		    (FUNC11(tnp, &nvattr, 0) || (nvattr.nva_nlink == 1)));
		FUNC17(tnp);
		FUNC6(nfs_node_hash_mutex);
		if (tvprecycle && (tnp->n_hflag & NHHASHED)) {
			/*
			 * remove nfsnode from hash now so we can't accidentally find it
			 * again if another object gets created with the same filehandle
			 * before this vnode gets reclaimed
			 */
			FUNC1(tnp, n_hash);
			tnp->n_hflag &= ~NHHASHED;
			FUNC0(266, 0, tnp, tnp->n_flag, 0xb1eb1e);
		}
		FUNC7(nfs_node_hash_mutex);
	}

	/* purge the old name cache entries and enter the new one */
	FUNC13(fdnp, fnp, fcnp, ctx);
	if (tvp) {
		FUNC13(tdnp, tnp, tcnp, ctx);
		if (tvprecycle) {
			/* clear flags now: won't get nfs_vnop_inactive for recycled vnode */
			/* clear all flags other than these */
			FUNC15(tnp);
			tnp->n_flag &= (NMODIFIED);
			FUNC17(tnp);
			FUNC26(tvp);
		}
	}
	if (!error) {
		FUNC15(tdnp);
		if (tdnp->n_flag & NNEGNCENTRIES) {
			tdnp->n_flag &= ~NNEGNCENTRIES;
			FUNC5(tdvp);
		}
		FUNC17(tdnp);
		FUNC15(fnp);
		FUNC4(tdvp, fvp, tcnp);
		if (tdvp != fdvp) {	/* update parent pointer */
			if (fnp->n_parent && !FUNC22(fnp->n_parent)) {
				/* remove ref from old parent */
				FUNC28(fnp->n_parent);
				FUNC25(fnp->n_parent);
			}
			fnp->n_parent = tdvp;
			if (tdvp && !FUNC22(tdvp)) {
				/* add ref to new parent */
				FUNC27(tdvp);
				FUNC25(tdvp);
			} else {
				fnp->n_parent = NULL;
			}
		}
		FUNC17(fnp);
	}
out:
	/* nfs_getattr() will check changed and purge caches */
	FUNC10(fdnp, NULL, ctx, NGA_CACHED);
	FUNC10(tdnp, NULL, ctx, NGA_CACHED);
	if (locked) {
		/* unlock node */
		FUNC6(nfs_node_hash_mutex);
		tnp->n_hflag &= ~NHLOCKED;
		if (tnp->n_hflag & NHLOCKWANT) {
			tnp->n_hflag &= ~NHLOCKWANT;
			FUNC30(tnp);
		}
		FUNC7(nfs_node_hash_mutex);
	}
	FUNC14(fdnp, fnp, tdnp, tnp);
	return (error);
}