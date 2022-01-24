#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct vnop_lookup_args {scalar_t__* a_vpp; scalar_t__ a_dvp; struct componentname* a_cnp; int /*<<< orphan*/  a_context; } ;
struct vnop_access_args {int /*<<< orphan*/  a_context; int /*<<< orphan*/  a_action; scalar_t__ a_vp; int /*<<< orphan*/ * a_desc; } ;
struct nfsreq {int /*<<< orphan*/  r_auth; } ;
struct TYPE_24__ {scalar_t__ nfsa_maxname; int /*<<< orphan*/  nfsa_bitmap; } ;
struct nfsmount {int nm_vers; TYPE_3__* nm_funcs; TYPE_2__ nm_fsattr; } ;
struct nfs_vattr {int dummy; } ;
struct componentname {int cn_flags; char* cn_nameptr; int cn_namelen; int cn_nameiop; } ;
typedef  TYPE_4__* nfsnode_t ;
typedef  scalar_t__ mount_t ;
struct TYPE_27__ {scalar_t__ fh_len; int /*<<< orphan*/  fh_data; } ;
typedef  TYPE_5__ fhandle_t ;
struct TYPE_28__ {int /*<<< orphan*/  lookupcache_misses; int /*<<< orphan*/  lookupcache_hits; } ;
struct TYPE_23__ {int nva_flags; } ;
struct TYPE_26__ {int /*<<< orphan*/  n_flag; int /*<<< orphan*/  n_xid; TYPE_1__ n_vattr; } ;
struct TYPE_25__ {int (* nf_lookup_rpc_async ) (TYPE_4__*,char*,int,int /*<<< orphan*/ ,struct nfsreq**) ;int (* nf_lookup_rpc_async_finish ) (TYPE_4__*,char*,int,int /*<<< orphan*/ ,struct nfsreq*,int /*<<< orphan*/ *,TYPE_5__*,struct nfs_vattr*) ;} ;

/* Variables and functions */
 int CREATE ; 
#define  DELETE 130 
 int EISDIR ; 
 int EJUSTRETURN ; 
 int ENAMETOOLONG ; 
#define  ENOENT 129 
 int ENXIO ; 
 int EROFS ; 
 int ISLASTCN ; 
 int /*<<< orphan*/  KAUTH_VNODE_SEARCH ; 
 int MAKEENTRY ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  NFS_FATTR_MAXNAME ; 
 int NFS_FFLAG_TRIGGER ; 
 int NFS_VER2 ; 
 int NFS_VER4 ; 
 int /*<<< orphan*/  NGA_CACHED ; 
 int NG_MAKEENTRY ; 
 scalar_t__ FUNC3 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NNEGNCENTRIES ; 
 int /*<<< orphan*/  NONEGNAMECACHE ; 
 scalar_t__ NULLVP ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_vattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_vattr*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDIRPLUS ; 
#define  RENAME 128 
 struct nfsmount* FUNC7 (scalar_t__) ; 
 TYPE_4__* FUNC8 (scalar_t__) ; 
 struct nfsmount* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *,struct componentname*) ; 
 int FUNC11 (scalar_t__,scalar_t__*,struct componentname*) ; 
 int FUNC12 (TYPE_4__*,TYPE_4__**,struct componentname*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct nfsmount*) ; 
 int FUNC16 (scalar_t__,TYPE_4__*,struct componentname*,int /*<<< orphan*/ ,scalar_t__,struct nfs_vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int FUNC19 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int FUNC21 (struct vnop_access_args*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 TYPE_9__ nfsstats ; 
 int FUNC23 (TYPE_4__*,char*,int,int /*<<< orphan*/ ,struct nfsreq**) ; 
 int FUNC24 (TYPE_4__*,char*,int,int /*<<< orphan*/ ,struct nfsreq*,int /*<<< orphan*/ *,TYPE_5__*,struct nfs_vattr*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__) ; 
 scalar_t__ FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/  vnop_access_desc ; 

int
FUNC31(
	struct vnop_lookup_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_dvp;
		vnode_t *a_vpp;
		struct componentname *a_cnp;
		vfs_context_t a_context;
	} */ *ap)
{
	vfs_context_t ctx = ap->a_context;
	struct componentname *cnp = ap->a_cnp;
	vnode_t dvp = ap->a_dvp;
	vnode_t *vpp = ap->a_vpp;
	int flags = cnp->cn_flags;
	vnode_t newvp;
	nfsnode_t dnp, np;
	struct nfsmount *nmp;
	mount_t mp;
	int nfsvers, error, busyerror = ENOENT, isdot, isdotdot, negnamecache;
	u_int64_t xid;
	struct nfs_vattr nvattr;
	int ngflags;
	struct vnop_access_args naa;
	fhandle_t fh;
	struct nfsreq rq, *req = &rq;

	*vpp = NULLVP;

	dnp = FUNC8(dvp);
	FUNC5(&nvattr);

	mp = FUNC28(dvp);
	nmp = FUNC7(mp);
	if (FUNC15(nmp)) {
		error = ENXIO;
		goto error_return;
	}
	nfsvers = nmp->nm_vers;
	negnamecache = !FUNC3(nmp, NONEGNAMECACHE);

	if ((error = busyerror = FUNC19(dnp, FUNC25(ctx))))
		goto error_return;
	/* nfs_getattr() will check changed and purge caches */
	if ((error = FUNC13(dnp, NULL, ctx, NGA_CACHED)))
		goto error_return;

	error = FUNC11(dvp, vpp, cnp);
	switch (error) {
	case ENOENT:
		/* negative cache entry */
		goto error_return;
	case 0:
		/* cache miss */
		if ((nfsvers > NFS_VER2) && FUNC3(nmp, RDIRPLUS)) {
			/* if rdirplus, try dir buf cache lookup */
			error = FUNC12(dnp, &np, cnp, ctx, 0);
			if (!error && np) {
				/* dir buf cache hit */
				*vpp = FUNC0(np);
				error = -1;
			}
		}
		if (error != -1) /* cache miss */
			break;
		/* FALLTHROUGH */
	case -1:
		/* cache hit, not really an error */
		FUNC6(1, &nfsstats.lookupcache_hits);

		FUNC17(dnp);
		busyerror = ENOENT;

		/* check for directory access */
		naa.a_desc = &vnop_access_desc;
		naa.a_vp = dvp;
		naa.a_action = KAUTH_VNODE_SEARCH;
		naa.a_context = ctx;

		/* compute actual success/failure based on accessibility */
		error = FUNC21(&naa);
		/* FALLTHROUGH */
	default:
		/* unexpected error from cache_lookup */
		goto error_return;
	}

	/* skip lookup, if we know who we are: "." or ".." */
	isdot = isdotdot = 0;
	if (cnp->cn_nameptr[0] == '.') {
		if (cnp->cn_namelen == 1)
			isdot = 1;
		if ((cnp->cn_namelen == 2) && (cnp->cn_nameptr[1] == '.'))
			isdotdot = 1;
	}
	if (isdotdot || isdot) {
		fh.fh_len = 0;
		goto found;
	}
	if ((nfsvers >= NFS_VER4) && (dnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER)) {
		/* we should never be looking things up in a trigger directory, return nothing */
		error = ENOENT;
		goto error_return;
	}

	/* do we know this name is too long? */
	nmp = FUNC9(dvp);
	if (FUNC15(nmp)) {
		error = ENXIO;
		goto error_return;
	}
	if (FUNC1(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_MAXNAME) &&
	     (cnp->cn_namelen > (int)nmp->nm_fsattr.nfsa_maxname)) {
		error = ENAMETOOLONG;
		goto error_return;
	}

	error = 0;
	newvp = NULLVP;

	FUNC6(1, &nfsstats.lookupcache_misses);

	error = nmp->nm_funcs->nf_lookup_rpc_async(dnp, cnp->cn_nameptr, cnp->cn_namelen, ctx, &req);
	FUNC22(error);
	error = nmp->nm_funcs->nf_lookup_rpc_async_finish(dnp, cnp->cn_nameptr, cnp->cn_namelen, ctx, req, &xid, &fh, &nvattr);
	FUNC22(error);

	/* is the file handle the same as this directory's file handle? */
	isdot = FUNC2(dnp, fh.fh_data, fh.fh_len);

found:
	if (flags & ISLASTCN) {
		switch (cnp->cn_nameiop) {
		case DELETE:
			cnp->cn_flags &= ~MAKEENTRY;
			break;
		case RENAME:
			cnp->cn_flags &= ~MAKEENTRY;
			if (isdot) {
				error = EISDIR;
				goto error_return;
			}
			break;
		}
	}

	if (isdotdot) {
		newvp = FUNC27(dvp);
		if (!newvp) {
			error = ENOENT;
			goto error_return;
		}
	} else if (isdot) {
		error = FUNC26(dvp);
		if (error)
			goto error_return;
		newvp = dvp;
		FUNC18(dnp);
		if (fh.fh_len && (dnp->n_xid <= xid))
			FUNC14(dnp, &nvattr, &xid, 0);
		FUNC20(dnp);
	} else {
		ngflags = (cnp->cn_flags & MAKEENTRY) ? NG_MAKEENTRY : 0;
		error = FUNC16(mp, dnp, cnp, fh.fh_data, fh.fh_len, &nvattr, &xid, rq.r_auth, ngflags, &np);
		if (error)
			goto error_return;
		newvp = FUNC0(np);
		FUNC20(np);
	}
	*vpp = newvp;

nfsmout:
	if (error) {
		if (((cnp->cn_nameiop == CREATE) || (cnp->cn_nameiop == RENAME)) &&
		    (flags & ISLASTCN) && (error == ENOENT)) {
			if (FUNC28(dvp) && FUNC30(dvp))
				error = EROFS;
			else
				error = EJUSTRETURN;
		}
	}
	if ((error == ENOENT) && (cnp->cn_flags & MAKEENTRY) &&
	    (cnp->cn_nameiop != CREATE) && negnamecache) {
		/* add a negative entry in the name cache */
		FUNC18(dnp);
		FUNC10(dvp, NULL, cnp);
		dnp->n_flag |= NNEGNCENTRIES;
		FUNC20(dnp);
	}
error_return:
	FUNC4(&nvattr);
	if (!busyerror)
		FUNC17(dnp);
	if (error && *vpp) {
	        FUNC29(*vpp);
		*vpp = NULLVP;
	}
	return (error);
}