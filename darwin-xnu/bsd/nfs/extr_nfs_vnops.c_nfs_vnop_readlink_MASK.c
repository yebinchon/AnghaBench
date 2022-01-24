#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uio_t ;
typedef  int uint32_t ;
struct vnop_readlink_args {int /*<<< orphan*/  a_vp; int /*<<< orphan*/  a_uio; int /*<<< orphan*/  a_context; } ;
struct timespec {scalar_t__ tv_sec; } ;
struct nfsmount {int nm_vers; TYPE_1__* nm_funcs; } ;
struct nfsbuf {int nb_bufsize; int nb_error; int nb_validend; scalar_t__ nb_data; scalar_t__ nb_validoff; int /*<<< orphan*/  nb_flags; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_13__ {int /*<<< orphan*/  readlink_bios; int /*<<< orphan*/  biocache_readlinks; } ;
struct TYPE_12__ {struct timespec n_rltim; } ;
struct TYPE_11__ {int (* nf_readlink_rpc ) (TYPE_2__*,scalar_t__,int*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int EPERM ; 
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  NBLK_META ; 
 scalar_t__ NB_CACHE ; 
 int /*<<< orphan*/  NB_ERROR ; 
 int /*<<< orphan*/  NB_INVAL ; 
 int /*<<< orphan*/  NFS_MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  NGA_CACHED ; 
 int /*<<< orphan*/  NGA_UNCACHED ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VLNK ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsbuf**) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsbuf*,int) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct nfsmount*) ; 
 int nfs_readlink_nocache ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__ nfsstats ; 
 int FUNC14 (TYPE_2__*,scalar_t__,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

int
FUNC20(
	struct vnop_readlink_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		struct uio *a_uio;
		vfs_context_t a_context;
	} */ *ap)
{
	vfs_context_t ctx = ap->a_context;
	nfsnode_t np = FUNC5(ap->a_vp);
	struct nfsmount *nmp;
	int error = 0, nfsvers;
	uint32_t buflen;
	uio_t uio = ap->a_uio;
	struct nfsbuf *bp = NULL;
	struct timespec ts;
	int timeo;

	if (FUNC19(ap->a_vp) != VLNK)
		return (EPERM);

	if (FUNC16(uio) == 0)
		return (0);
	if (FUNC15(uio) < 0)
		return (EINVAL);

	nmp = FUNC6(ap->a_vp);
	if (FUNC12(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;

	
	/* nfs_getattr() will check changed and purge caches */
	if ((error = FUNC11(np, NULL, ctx, nfs_readlink_nocache ? NGA_UNCACHED : NGA_CACHED))) {
		FUNC0(531, np, 0xd1e0001, 0, error);
		return (error);
	}

	if (nfs_readlink_nocache) {
		timeo = FUNC8(np);
		FUNC7(&ts);
	}
	
retry:
	FUNC3(1, &nfsstats.biocache_readlinks);
	error = FUNC9(np, 0, NFS_MAXPATHLEN, FUNC18(ctx), NBLK_META, &bp);
	if (error) {
		FUNC0(531, np, 0xd1e0002, 0, error);
		return (error);
	}

	if (nfs_readlink_nocache) {
		FUNC2("timeo = %d ts.tv_sec = %ld need refresh = %d cached = %d\n", timeo, ts.tv_sec,
			     (np->n_rltim.tv_sec + timeo) < ts.tv_sec || nfs_readlink_nocache > 1, 
			     FUNC1(bp->nb_flags, NB_CACHE) == NB_CACHE);
		/* n_rltim is synchronized by the associated nfs buf */
		if (FUNC1(bp->nb_flags, NB_CACHE) && ((nfs_readlink_nocache > 1)  || ((np->n_rltim.tv_sec + timeo) < ts.tv_sec))) {
			FUNC4(bp->nb_flags, NB_INVAL);
			FUNC10(bp, 0);
			goto retry;
		}
	}
	if (!FUNC1(bp->nb_flags, NB_CACHE)) {
readagain:
		FUNC3(1, &nfsstats.readlink_bios);
		buflen = bp->nb_bufsize;
		error = nmp->nm_funcs->nf_readlink_rpc(np, bp->nb_data, &buflen, ctx);
		if (error) {
			if (error == ESTALE) {
				FUNC2("Stale FH from readlink rpc\n");
				error = FUNC13(np, ctx);
				if (error == 0)
					goto readagain;
			}
			FUNC4(bp->nb_flags, NB_ERROR);
			bp->nb_error = error;
			FUNC2("readlink failed %d\n", error);
		} else {
			bp->nb_validoff = 0;
			bp->nb_validend = buflen;
			np->n_rltim = ts;
			FUNC2("readlink of %.*s\n", bp->nb_validend, (char *)bp->nb_data);
		}
	} else {
		FUNC2("got cached link of %.*s\n", bp->nb_validend, (char *)bp->nb_data);
	}
	
	if (!error && (bp->nb_validend > 0))
		error = FUNC17(bp->nb_data, bp->nb_validend, uio);
	FUNC0(531, np, bp->nb_validend, 0, error);
	FUNC10(bp, 1);
	return (error);
}