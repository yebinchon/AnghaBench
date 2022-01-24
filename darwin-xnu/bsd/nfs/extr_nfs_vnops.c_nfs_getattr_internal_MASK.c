#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct timespec {int member_0; int /*<<< orphan*/  member_1; } ;
struct nfsmount {int nm_vers; TYPE_2__* nm_funcs; } ;
struct nfs_vattr {int /*<<< orphan*/ * nva_acl; int /*<<< orphan*/  nva_bitmap; } ;
typedef  TYPE_3__* nfsnode_t ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;
struct TYPE_26__ {int /*<<< orphan*/  nva_size; } ;
struct TYPE_28__ {int n_flag; int n_openflags; int n_xid; TYPE_1__ n_vattr; int /*<<< orphan*/  n_size; int /*<<< orphan*/  n_ncgen; int /*<<< orphan*/  n_fhsize; int /*<<< orphan*/  n_fhp; int /*<<< orphan*/  n_lock; } ;
struct TYPE_27__ {int (* nf_access_rpc ) (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ;int (* nf_getattr_rpc ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nfs_vattr*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int EINPROGRESS ; 
 int ENOENT ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int,int,TYPE_3__*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int NACC ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int NCHG ; 
 struct nfsmount* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  NFS_ACCESS_ALL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,TYPE_3__*,struct nfs_vattr*) ; 
 scalar_t__ FUNC10 (int,TYPE_3__*,struct nfs_vattr*) ; 
 int /*<<< orphan*/  FUNC11 (int,TYPE_3__*,struct nfs_vattr*) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_3__*,struct nfs_vattr*) ; 
 int /*<<< orphan*/  NFS_FATTR_ACL ; 
 int NFS_VER2 ; 
 int NFS_VER4 ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int NGA_ACL ; 
 int NGA_MONITOR ; 
 int NGA_SOFT ; 
 int NGA_UNCACHED ; 
 int NGETATTRINPROG ; 
 int NGETATTRWANT ; 
 int NNEGNCENTRIES ; 
 int NUPD ; 
 int NUPDATESIZE ; 
 int /*<<< orphan*/  FUNC14 (struct nfs_vattr*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfs_vattr*) ; 
 int N_DELEG_MASK ; 
 scalar_t__ PZERO ; 
 int R_SOFT ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int VDIR ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_SAVE ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,char*,struct timespec*) ; 
 scalar_t__ nfs_access_cache_timeout ; 
 scalar_t__ nfs_access_for_getattr ; 
 scalar_t__ FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC23 (TYPE_3__*,struct nfs_vattr*,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 
 int FUNC25 (TYPE_3__*,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (struct nfsmount*) ; 
 int FUNC27 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_3__*) ; 
 int FUNC30 (struct nfsmount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (struct nfsmount*) ; 
 int FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int FUNC34 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC35 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nfs_vattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_3__*) ; 

int
FUNC39(nfsnode_t np, struct nfs_vattr *nvap, vfs_context_t ctx, int flags)
{
	struct nfsmount *nmp;
	int error = 0, nfsvers, inprogset = 0, wanted = 0, avoidfloods;
	struct nfs_vattr nvattr;
	struct timespec ts = { 2, 0 };
	u_int64_t xid;

	FUNC3(513, np->n_size, np, np->n_vattr.nva_size, np->n_flag);

	nmp = FUNC6(np);
	
	if (FUNC26(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;

	if (!nvap)
		nvap = &nvattr;
	FUNC15(nvap);

	/* Update local times for special files. */
	if (np->n_flag & (NACC | NUPD)) {
		FUNC28(np);
		np->n_flag |= NCHG;
		FUNC29(np);
	}
	/* Update size, if necessary */
	if (FUNC4(np->n_flag, NUPDATESIZE))
		FUNC22(np, 0);

	error = FUNC27(np);
	FUNC33(error);
	if (!(flags & (NGA_UNCACHED|NGA_MONITOR)) || ((nfsvers >= NFS_VER4) && (np->n_openflags & N_DELEG_MASK))) {
		/*
		 * Use the cache or wait for any getattr in progress if:
		 * - it's a cached request, or
		 * - we have a delegation, or
		 * - the server isn't responding
		 */
		while (1) {
			error = FUNC23(np, nvap, flags);
			if (!error || (error != ENOENT)) {
				FUNC29(np);
				goto nfsmout;
			}
			error = 0;
			if (!FUNC4(np->n_flag, NGETATTRINPROG))
				break;
			if (flags & NGA_MONITOR) {
				/* no need to wait if a request is pending */
				error = EINPROGRESS;
				FUNC29(np);
				goto nfsmout;
			}
			FUNC16(np->n_flag, NGETATTRWANT);
			FUNC20(np, &np->n_lock, PZERO-1, "nfsgetattrwant", &ts);
			if ((error = FUNC30(FUNC6(np), NULL, FUNC36(ctx), 0))) {
				FUNC29(np);
				goto nfsmout;
			}
		}
		FUNC16(np->n_flag, NGETATTRINPROG);
		inprogset = 1;
	} else if (!FUNC4(np->n_flag, NGETATTRINPROG)) {
		FUNC16(np->n_flag, NGETATTRINPROG);
		inprogset = 1;
	} else if (flags & NGA_MONITOR) {
		/* no need to make a request if one is pending */
		error = EINPROGRESS;
	}
	FUNC29(np);

	nmp = FUNC6(np);
	if (FUNC26(nmp))
		error = ENXIO;
	if (error)
		goto nfsmout;

	/*
	 * Return cached attributes if they are valid,
	 * if the server doesn't respond, and this is
	 * some softened up style of mount.
	 */
	if (FUNC5(np) && FUNC31(nmp))
		flags |= NGA_SOFT;

	/*
	 * We might want to try to get both the attributes and access info by
	 * making an ACCESS call and seeing if it returns updated attributes.
	 * But don't bother if we aren't caching access info or if the
	 * attributes returned wouldn't be cached.
	 */
	if (!(flags & NGA_ACL) && (nfsvers != NFS_VER2) && nfs_access_for_getattr && (nfs_access_cache_timeout > 0)) {
		if (FUNC21(np) > 0) {
			/*  OSAddAtomic(1, &nfsstats.accesscache_misses); */
			u_int32_t access = NFS_ACCESS_ALL;
			int rpcflags = 0;

			/* Return cached attrs if server doesn't respond */
			if (flags & NGA_SOFT)
				rpcflags |= R_SOFT;

			error = nmp->nm_funcs->nf_access_rpc(np, &access, rpcflags, ctx);

			if (error == ETIMEDOUT)
				goto returncached;

			if (error)
				goto nfsmout;
			FUNC28(np);
			error = FUNC23(np, nvap, flags);
			FUNC29(np);
			if (!error || (error != ENOENT))
				goto nfsmout;
			/* Well, that didn't work... just do a getattr... */
			error = 0;
		}
	}

	avoidfloods = 0;

tryagain:
	error = nmp->nm_funcs->nf_getattr_rpc(np, NULL, np->n_fhp, np->n_fhsize, flags, ctx, nvap, &xid);
	if (!error) {
		FUNC28(np);
		error = FUNC25(np, nvap, &xid, 0);
		FUNC29(np);
	}

	/*
	 * If the server didn't respond, return cached attributes.
	 */
returncached:
	if ((flags & NGA_SOFT) && (error == ETIMEDOUT)) {
		FUNC28(np);
		error = FUNC23(np, nvap, flags);
		if (!error || (error != ENOENT)) {
			FUNC29(np);
			goto nfsmout;
		}
		FUNC29(np);
	}
	FUNC33(error);

	if (!xid) { /* out-of-order rpc - attributes were dropped */
		FUNC1(513, -1, np, np->n_xid >> 32, np->n_xid);
		if (avoidfloods++ < 20)
			goto tryagain;
		/* avoidfloods>1 is bizarre.  at 20 pull the plug */
		/* just return the last attributes we got */
	}
nfsmout:
	FUNC28(np);
	if (inprogset) {
		wanted = FUNC4(np->n_flag, NGETATTRWANT);
		FUNC0(np->n_flag, (NGETATTRINPROG | NGETATTRWANT));
	}
	if (!error) {
		/* check if the node changed on us */
		vnode_t vp = FUNC7(np);
		enum vtype vtype = FUNC37(vp);
		if ((vtype == VDIR) && FUNC10(nfsvers, np, nvap)) {
			FUNC1(513, -1, np, 0, np);
			np->n_flag &= ~NNEGNCENTRIES;
			FUNC18(vp);
			np->n_ncgen++;
			FUNC12(nfsvers, np, nvap);
			FUNC13("Purge directory 0x%llx\n", 
			      (uint64_t)FUNC17(vp));
		}
		if (FUNC9(nfsvers, np, nvap)) {
			FUNC1(513, -1, np, -1, np);
			if (vtype == VDIR) {
				FUNC13("Invalidate directory 0x%llx\n", 
			               (uint64_t)FUNC17(vp));
				FUNC24(np);
			}
			FUNC29(np);
			if (wanted)
				FUNC38(np);
			error = FUNC32(vp, V_SAVE, ctx, 1);
			FUNC1(513, -1, np, -2, error);
			if (!error) {
				FUNC28(np);
				FUNC11(nfsvers, np, nvap);
				FUNC29(np);
			}
		} else {
			FUNC29(np);
			if (wanted)
				FUNC38(np);
		}
	} else {
		FUNC29(np);
		if (wanted)
			FUNC38(np);
	}

	if (nvap == &nvattr) {
		FUNC14(nvap);
	} else if (!(flags & NGA_ACL)) {
		/* make sure we don't return an ACL if it wasn't asked for */
		FUNC8(nvap->nva_bitmap, NFS_FATTR_ACL);
		if (nvap->nva_acl) {
			FUNC19(nvap->nva_acl);
			nvap->nva_acl = NULL;
		}
	}
	FUNC2(513, np->n_size, error, np->n_vattr.nva_size, np->n_flag);
	return (error);
}