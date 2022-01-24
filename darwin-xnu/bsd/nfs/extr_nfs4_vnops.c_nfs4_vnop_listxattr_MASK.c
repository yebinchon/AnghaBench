#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/ * uio_t ;
typedef  scalar_t__ uint64_t ;
struct vnop_listxattr_args {int /*<<< orphan*/ * a_size; int /*<<< orphan*/  a_vp; int /*<<< orphan*/ * a_uio; int /*<<< orphan*/  a_context; } ;
struct TYPE_15__ {int nfsa_flags; } ;
struct nfsmount {TYPE_1__ nm_fsattr; } ;
struct nfsbuf {scalar_t__ nb_flags; scalar_t__ nb_data; } ;
struct nfs_vattr {int nva_flags; int /*<<< orphan*/  nva_bitmap; } ;
struct nfs_dir_buf_header {int ndbh_count; int ndbh_entry_end; scalar_t__ ndbh_flags; int /*<<< orphan*/  ndbh_ncgen; } ;
struct direntry {scalar_t__ d_namlen; scalar_t__ d_seekoff; int /*<<< orphan*/  d_name; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_17__ {int /*<<< orphan*/  biocache_readdirs; } ;
struct TYPE_16__ {int n_flag; int /*<<< orphan*/  n_ncgen; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINTR ; 
 int EIO ; 
 int ENOENT ; 
 int ENOTSUP ; 
 int ENXIO ; 
 int ERANGE ; 
 int ERESTART ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBLK_READ ; 
 int /*<<< orphan*/  NB_CACHE ; 
 int /*<<< orphan*/  NDB_EOF ; 
 int /*<<< orphan*/  NDB_FULL ; 
 int NFSERR_BAD_COOKIE ; 
 int NFSERR_DIRBUFDROPPED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_DIRBLKSIZ ; 
 struct direntry* FUNC3 (struct direntry*) ; 
 struct direntry* FUNC4 (struct nfsbuf*) ; 
 int /*<<< orphan*/  NFS_FATTR_NAMED_ATTR ; 
 int NFS_FFLAG_HAS_NAMED_ATTRS ; 
 int NFS_FSFLAG_NAMED_ATTR ; 
 int /*<<< orphan*/  NGA_CACHED ; 
 int /*<<< orphan*/  NGA_UNCACHED ; 
 int NMODIFIED ; 
 int NNEEDINVALIDATE ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsbuf**) ; 
 int FUNC10 (struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsbuf*,int) ; 
 int FUNC12 (TYPE_2__*,struct nfs_vattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int FUNC16 (TYPE_2__*) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ nfsstats ; 
 int /*<<< orphan*/  FUNC20 (char*,scalar_t__,int,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

int
FUNC26(
	struct vnop_listxattr_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		uio_t a_uio;
		size_t *a_size;
		int a_options;
		vfs_context_t a_context;
	} */ *ap)
{
	vfs_context_t ctx = ap->a_context;
	nfsnode_t np = FUNC6(ap->a_vp);
	uio_t uio = ap->a_uio;
	nfsnode_t adnp = NULL;
	struct nfsmount *nmp;
	int error, done, i;
	struct nfs_vattr nvattr;
	uint64_t cookie, nextcookie, lbn = 0;
	struct nfsbuf *bp = NULL;
	struct nfs_dir_buf_header *ndbhp;
	struct direntry *dp;

	nmp = FUNC7(ap->a_vp);
	if (FUNC14(nmp))
		return (ENXIO);

	if (!(nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_NAMED_ATTR))
		return (ENOTSUP);

	error = FUNC12(np, &nvattr, ctx, NGA_CACHED);
	if (error)
		return (error);
	if (FUNC2(nvattr.nva_bitmap, NFS_FATTR_NAMED_ATTR) &&
	    !(nvattr.nva_flags & NFS_FFLAG_HAS_NAMED_ATTRS))
		return (0);

	if ((error = FUNC17(np, FUNC23(ctx))))
		return (error);
	adnp = FUNC8(np, 1, ctx);
	FUNC15(np);
	if (!adnp)
		goto out;

	if ((error = FUNC16(adnp)))
		goto out;

	if (adnp->n_flag & NNEEDINVALIDATE) {
		adnp->n_flag &= ~NNEEDINVALIDATE;
		FUNC13(adnp);
		FUNC18(adnp);
		error = FUNC19(FUNC1(adnp), 0, ctx, 1);
		if (!error)
			error = FUNC16(adnp);
		if (error)
			goto out;
	}

	/*
	 * check for need to invalidate when (re)starting at beginning
	 */
	if (adnp->n_flag & NMODIFIED) {
		FUNC13(adnp);
		FUNC18(adnp);
		if ((error = FUNC19(FUNC1(adnp), 0, ctx, 1)))
			goto out;
	} else {
		FUNC18(adnp);
	}
	/* nfs_getattr() will check changed and purge caches */
	if ((error = FUNC12(adnp, &nvattr, ctx, NGA_UNCACHED)))
		goto out;

	if (uio && (FUNC21(uio) == 0))
		goto out;

	done = 0;
	nextcookie = lbn = 0;

	while (!error && !done) {
		FUNC5(1, &nfsstats.biocache_readdirs);
		cookie = nextcookie;
getbuffer:
		error = FUNC9(adnp, lbn, NFS_DIRBLKSIZ, FUNC23(ctx), NBLK_READ, &bp);
		if (error)
			goto out;
		ndbhp = (struct nfs_dir_buf_header*)bp->nb_data;
		if (!FUNC0(bp->nb_flags, NB_CACHE) || !FUNC0(ndbhp->ndbh_flags, NDB_FULL)) {
			if (!FUNC0(bp->nb_flags, NB_CACHE)) { /* initialize the buffer */
				ndbhp->ndbh_flags = 0;
				ndbhp->ndbh_count = 0;
				ndbhp->ndbh_entry_end = sizeof(*ndbhp);
				ndbhp->ndbh_ncgen = adnp->n_ncgen;
			}
			error = FUNC10(bp, ctx);
			if (error == NFSERR_DIRBUFDROPPED)
				goto getbuffer;
			if (error)
				FUNC11(bp, 1);
			if (error && (error != ENXIO) && (error != ETIMEDOUT) && (error != EINTR) && (error != ERESTART)) {
				if (!FUNC16(adnp)) {
					FUNC13(adnp);
					FUNC18(adnp);
				}
				FUNC19(FUNC1(adnp), 0, ctx, 1);
				if (error == NFSERR_BAD_COOKIE)
					error = ENOENT;
			}
			if (error)
				goto out;
		}

		/* go through all the entries copying/counting */
		dp = FUNC4(bp);
		for (i=0; i < ndbhp->ndbh_count; i++) {
			if (!FUNC25(dp->d_name)) {
				if (uio == NULL) {
					*ap->a_size += dp->d_namlen + 1;
				} else if (FUNC21(uio) < (dp->d_namlen + 1)) {
					error = ERANGE;
				} else {
					error = FUNC22(dp->d_name, dp->d_namlen+1, uio);
					if (error && (error != EFAULT))
						error = ERANGE;
				}
			}
			nextcookie = dp->d_seekoff;
			dp = FUNC3(dp);
		}

		if (i == ndbhp->ndbh_count) {
			/* hit end of buffer, move to next buffer */
			lbn = nextcookie;
			/* if we also hit EOF, we're done */
			if (FUNC0(ndbhp->ndbh_flags, NDB_EOF))
				done = 1;
		}
		if (!error && !done && (nextcookie == cookie)) {
			FUNC20("nfs readdir cookie didn't change 0x%llx, %d/%d\n", cookie, i, ndbhp->ndbh_count);
			error = EIO;
		}
		FUNC11(bp, 1);
	}
out:
	if (adnp)
		FUNC24(FUNC1(adnp));
	return (error);
}