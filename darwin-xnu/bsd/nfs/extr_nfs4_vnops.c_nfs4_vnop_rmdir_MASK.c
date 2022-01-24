#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnop_rmdir_args {struct componentname* a_cnp; int /*<<< orphan*/  a_dvp; int /*<<< orphan*/  a_vp; int /*<<< orphan*/  a_context; } ;
struct TYPE_18__ {int nfsa_flags; } ;
struct nfsmount {TYPE_1__ nm_fsattr; } ;
struct nfs_dulookup {int dummy; } ;
struct componentname {int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_19__ {int n_hflag; int /*<<< orphan*/  n_flag; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC2 (TYPE_2__*) ; 
 int NFS_FSFLAG_NAMED_ATTR ; 
 int /*<<< orphan*/  NGA_CACHED ; 
 int NHHASHED ; 
 scalar_t__ VDIR ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_hash ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_dulookup*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_dulookup*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_dulookup*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_2__*,struct componentname*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  nfs_node_hash_mutex ; 
 int FUNC14 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(
	struct vnop_rmdir_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_dvp;
		vnode_t a_vp;
		struct componentname *a_cnp;
		vfs_context_t a_context;
	} */ *ap)
{
	vfs_context_t ctx = ap->a_context;
	vnode_t vp = ap->a_vp;
	vnode_t dvp = ap->a_dvp;
	struct componentname *cnp = ap->a_cnp;
	struct nfsmount *nmp;
	int error = 0, namedattrs;
	nfsnode_t np = FUNC3(vp);
	nfsnode_t dnp = FUNC3(dvp);
	struct nfs_dulookup dul;

	if (FUNC17(vp) != VDIR)
		return (EINVAL);

	nmp = FUNC2(dnp);
	if (FUNC11(nmp))
		return (ENXIO);
	namedattrs = (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_NAMED_ATTR);

	if ((error = FUNC14(dnp, np, FUNC15(ctx))))
		return (error);

	if (!namedattrs) {
		FUNC8(&dul, dnp, cnp->cn_nameptr, cnp->cn_namelen, ctx);
		FUNC9(&dul, dnp, ctx);
	}

	error = FUNC6(dnp, cnp->cn_nameptr, cnp->cn_namelen,
			FUNC15(ctx), FUNC16(ctx));

	FUNC12(dnp, np, cnp, ctx);
	/* nfs_getattr() will check changed and purge caches */
	FUNC10(dnp, NULL, ctx, NGA_CACHED);
	if (!namedattrs)
		FUNC7(&dul, dnp, ctx);
	FUNC13(dnp, np);

	/*
	 * Kludge: Map ENOENT => 0 assuming that you have a reply to a retry.
	 */
	if (error == ENOENT)
		error = 0;
	if (!error) {
		/*
		 * remove nfsnode from hash now so we can't accidentally find it
		 * again if another object gets created with the same filehandle
		 * before this vnode gets reclaimed
		 */
		FUNC4(nfs_node_hash_mutex);
		if (np->n_hflag & NHHASHED) {
			FUNC1(np, n_hash);
			np->n_hflag &= ~NHHASHED;
			FUNC0(266, 0, np, np->n_flag, 0xb1eb1e);
		}
		FUNC5(nfs_node_hash_mutex);
	}
	return (error);
}