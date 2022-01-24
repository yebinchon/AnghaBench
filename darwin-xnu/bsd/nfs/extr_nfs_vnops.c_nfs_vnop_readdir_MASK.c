#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uio_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct vnop_readdir_args {int a_flags; int* a_eofflag; int* a_numdirent; int /*<<< orphan*/  a_uio; int /*<<< orphan*/  a_vp; int /*<<< orphan*/  a_context; } ;
struct nfsmount {int nm_vers; int nm_state; } ;
struct nfsbuf {scalar_t__ nb_flags; scalar_t__ nb_data; } ;
struct nfs_dir_buf_header {scalar_t__ ndbh_count; int ndbh_entry_end; scalar_t__ ndbh_flags; int /*<<< orphan*/  ndbh_ncgen; } ;
struct direntry {scalar_t__ d_seekoff; scalar_t__ d_reclen; int d_namlen; int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_type; int /*<<< orphan*/  d_ino; } ;
struct dirent {int /*<<< orphan*/  d_name; scalar_t__ d_namlen; int /*<<< orphan*/  d_type; int /*<<< orphan*/  d_ino; scalar_t__ d_reclen; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  dent ;
struct TYPE_14__ {int /*<<< orphan*/  biocache_readdirs; } ;
struct TYPE_12__ {int nva_flags; } ;
struct TYPE_13__ {int n_flag; int /*<<< orphan*/  n_ncgen; TYPE_1__ n_vattr; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int ENOENT ; 
 int ENXIO ; 
 int EPERM ; 
 int ERESTART ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBLK_READ ; 
 int /*<<< orphan*/  NB_CACHE ; 
 int /*<<< orphan*/  NDB_EOF ; 
 int /*<<< orphan*/  NDB_FULL ; 
 int NFSERR_BAD_COOKIE ; 
 int NFSERR_DIRBUFDROPPED ; 
 int NFSSTA_BIGCOOKIES ; 
 int /*<<< orphan*/  NFS_DIRBLKSIZ ; 
 struct direntry* FUNC1 (struct direntry*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct direntry* FUNC3 (struct nfsbuf*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int NFS_FFLAG_TRIGGER ; 
 int NFS_VER4 ; 
 int /*<<< orphan*/  NGA_UNCACHED ; 
 int NMODIFIED ; 
 int NNEEDINVALIDATE ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ VDIR ; 
 int VNODE_READDIR_EXTENDED ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsbuf**) ; 
 int FUNC11 (struct nfsbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsbuf*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int FUNC14 (TYPE_2__*,scalar_t__,int*,scalar_t__*) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (struct nfsmount*) ; 
 int FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ nfsstats ; 
 int /*<<< orphan*/  FUNC21 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC26 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 

int
FUNC29(
	struct vnop_readdir_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		struct uio *a_uio;
		int a_flags;
		int *a_eofflag;
		int *a_numdirent;
		vfs_context_t a_context;
	} */ *ap)
{
	vfs_context_t ctx = ap->a_context;
	vnode_t dvp = ap->a_vp;
	nfsnode_t dnp = FUNC7(dvp);
	struct nfsmount *nmp;
	uio_t uio = ap->a_uio;
	int error, nfsvers, extended, numdirent, bigcookies, ptc, done;
	uint16_t i, iptc, rlen, nlen;
	uint64_t cookie, nextcookie, lbn = 0;
	struct nfsbuf *bp = NULL;
	struct nfs_dir_buf_header *ndbhp;
	struct direntry *dp, *dpptc;
	struct dirent dent;
	char *cp = NULL;
	thread_t thd;

	nmp = FUNC8(dvp);
	if (FUNC17(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	bigcookies = (nmp->nm_state & NFSSTA_BIGCOOKIES);
	extended = (ap->a_flags & VNODE_READDIR_EXTENDED);

	if (FUNC28(dvp) != VDIR)
		return (EPERM);

	if (ap->a_eofflag)
		*ap->a_eofflag = 0;

	if (FUNC24(uio) == 0)
		return (0);

	if ((nfsvers >= NFS_VER4) && (dnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER)) {
		/* trigger directories should never be read, return nothing */
		return (0);
	}

	thd = FUNC27(ctx);
	numdirent = done = 0;
	nextcookie = FUNC23(uio);
	ptc = bigcookies && FUNC4(nextcookie);

	if ((error = FUNC18(dnp)))
		goto out;

	if (dnp->n_flag & NNEEDINVALIDATE) {
		dnp->n_flag &= ~NNEEDINVALIDATE;
		FUNC16(dnp);
		FUNC19(dnp);
		error = FUNC20(dvp, 0, ctx, 1);
		if (!error)
			error = FUNC18(dnp);
		if (error)
			goto out;
	}

	/*
	 * check for need to invalidate when (re)starting at beginning
	 */
	if (!nextcookie) {
		if (dnp->n_flag & NMODIFIED) {
			FUNC16(dnp);
			FUNC19(dnp);
			if ((error = FUNC20(dvp, 0, ctx, 1)))
				goto out;
		} else {
			FUNC19(dnp);
		}
		/* nfs_getattr() will check changed and purge caches */
		if ((error = FUNC15(dnp, NULL, ctx, NGA_UNCACHED)))
			goto out;
	} else {
		FUNC19(dnp);
	}

	error = FUNC14(dnp, nextcookie, &ptc, &lbn);
	if (error) {
		if (error < 0) { /* just hit EOF cookie */
			done = 1;
			error = 0;
		}
		if (ap->a_eofflag)
			*ap->a_eofflag = 1;
	}

	while (!error && !done) {
		FUNC6(1, &nfsstats.biocache_readdirs);
		cookie = nextcookie;
getbuffer:
		error = FUNC10(dnp, lbn, NFS_DIRBLKSIZ, thd, NBLK_READ, &bp);
		if (error)
			goto out;
		ndbhp = (struct nfs_dir_buf_header*)bp->nb_data;
		if (!FUNC0(bp->nb_flags, NB_CACHE) || !FUNC0(ndbhp->ndbh_flags, NDB_FULL)) {
			if (!FUNC0(bp->nb_flags, NB_CACHE)) { /* initialize the buffer */
				ndbhp->ndbh_flags = 0;
				ndbhp->ndbh_count = 0;
				ndbhp->ndbh_entry_end = sizeof(*ndbhp);
				ndbhp->ndbh_ncgen = dnp->n_ncgen;
			}
			error = FUNC11(bp, ctx);
			if (error == NFSERR_DIRBUFDROPPED)
				goto getbuffer;
			if (error)
				FUNC12(bp, 1);
			if (error && (error != ENXIO) && (error != ETIMEDOUT) && (error != EINTR) && (error != ERESTART)) {
				if (!FUNC18(dnp)) {
					FUNC16(dnp);
					FUNC19(dnp);
				}
				FUNC20(dvp, 0, ctx, 1);
				if (error == NFSERR_BAD_COOKIE)
					error = ENOENT;
			}
			if (error)
				goto out;
		}

		/* find next entry to return */
		dp = FUNC3(bp);
		i = 0;
		if ((lbn != cookie) && !(ptc && FUNC5(lbn, cookie))) {
			dpptc = NULL;
			iptc = 0;
			for (; (i < ndbhp->ndbh_count) && (cookie != dp->d_seekoff); i++) {
				if (ptc && !dpptc && FUNC5(cookie, dp->d_seekoff)) {
					iptc = i;
					dpptc = dp;
				}
				nextcookie = dp->d_seekoff;
				dp = FUNC1(dp);
			}
			if ((i == ndbhp->ndbh_count) && dpptc) {
				i = iptc;
				dp = dpptc;
			}
			if (i < ndbhp->ndbh_count) {
				nextcookie = dp->d_seekoff;
				dp = FUNC1(dp);
				i++;
			}
		}
		ptc = 0;  /* only have to deal with ptc on first cookie */

		/* return as many entries as we can */
		for (; i < ndbhp->ndbh_count; i++) {
			if (extended) {
				rlen = dp->d_reclen;
				cp = (char*)dp;
			} else {
				if (!cp) {
					cp = (char*)&dent;
					FUNC9(cp, sizeof(dent));
				}
				if (dp->d_namlen > (sizeof(dent.d_name) - 1))
					nlen = sizeof(dent.d_name) - 1;
				else
					nlen = dp->d_namlen;
				rlen = FUNC2(nlen);
				dent.d_reclen = rlen;
				dent.d_ino = dp->d_ino;
				dent.d_type = dp->d_type;
				dent.d_namlen = nlen;
				FUNC22(dent.d_name, dp->d_name, nlen + 1);
			}
			/* check that the record fits */
			if (rlen > FUNC24(uio)) {
				done = 1;
				break;
			}
			if ((error = FUNC26(cp, rlen, uio)))
				break;
			numdirent++;
			nextcookie = dp->d_seekoff;
			dp = FUNC1(dp);
		}

		if (i == ndbhp->ndbh_count) {
			/* hit end of buffer, move to next buffer */
			lbn = nextcookie;
			/* if we also hit EOF, we're done */
			if (FUNC0(ndbhp->ndbh_flags, NDB_EOF)) {
				done = 1;
				if (ap->a_eofflag)
					*ap->a_eofflag = 1;
			}
		}
		if (!error)
			FUNC25(uio, nextcookie);
		if (!error && !done && (nextcookie == cookie)) {
			FUNC21("nfs readdir cookie didn't change 0x%llx, %d/%d\n", cookie, i, ndbhp->ndbh_count);
			error = EIO;
		}
		FUNC12(bp, 1);
	}

	if (!error)
		FUNC13(dnp, nextcookie, lbn);

	if (ap->a_numdirent)
		*ap->a_numdirent = numdirent;
out:
	return (error);
}