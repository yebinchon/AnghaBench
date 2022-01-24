#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * uio_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; size_t nm_wsize; scalar_t__ nm_stategenid; int /*<<< orphan*/  nm_state; int /*<<< orphan*/  nm_lock; TYPE_1__* nm_funcs; } ;
typedef  TYPE_2__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_12__ {int n_flag; } ;
struct TYPE_11__ {int (* nf_write_rpc_async ) (TYPE_2__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct nfsreq**) ;int (* nf_write_rpc_async_finish ) (TYPE_2__*,struct nfsreq*,int*,size_t*,int*) ;} ;

/* Variables and functions */
 int EFBIG ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*,int,size_t,int) ; 
 int NFSERR_GRACE ; 
 struct nfsmount* FUNC3 (TYPE_2__*) ; 
 int NFS_VER2 ; 
 int NFS_VER4 ; 
 int NFS_WRITE_FILESYNC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int NREVOKE ; 
 scalar_t__ PZERO ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct nfsmount*) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct nfsmount*) ; 
 int FUNC10 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsmount*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct nfsreq**) ; 
 int FUNC14 (TYPE_2__*,struct nfsreq*,int*,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 size_t FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC23(
	nfsnode_t np,
	uio_t uio,
	thread_t thd,
	kauth_cred_t cred,
	int *iomodep,
	uint64_t *wverfp)
{
	struct nfsmount *nmp;
	int error = 0, nfsvers;
	int wverfset, commit, committed;
	uint64_t wverf = 0, wverf2;
	size_t nmwsize, totalsize, tsiz, len, rlen;
	struct nfsreq rq, *req = &rq;
	uint32_t stategenid = 0, vrestart = 0, restart = 0;
	uio_t uio_save = NULL;

#if DIAGNOSTIC
	/* XXX limitation based on need to back up uio on short write */
	if (uio_iovcnt(uio) != 1)
		panic("nfs3_write_rpc: iovcnt > 1");
#endif
	FUNC2(537, np, FUNC19(uio), FUNC20(uio), *iomodep);
	nmp = FUNC3(np);
	if (FUNC7(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	nmwsize = nmp->nm_wsize;

	wverfset = 0;
	committed = NFS_WRITE_FILESYNC;

	totalsize = tsiz = FUNC20(uio);
	if ((nfsvers == NFS_VER2) && ((uint64_t)(FUNC19(uio) + tsiz) > 0xffffffffULL)) {
		FUNC1(537, np, FUNC19(uio), FUNC20(uio), EFBIG);
		return (EFBIG);
	}

	uio_save = FUNC16(uio);
	if (uio_save == NULL) {
		return (EIO);
	}

	while (tsiz > 0) {
		len = (tsiz > nmwsize) ? nmwsize : tsiz;
		FUNC0(537, np, FUNC19(uio), len, 0);
		if (np->n_flag & NREVOKE) {
			error = EIO;
			break;
		}
		if (nmp->nm_vers >= NFS_VER4)
			stategenid = nmp->nm_stategenid;
		error = nmp->nm_funcs->nf_write_rpc_async(np, uio, len, thd, cred, *iomodep, NULL, &req);
		if (!error)
			error = nmp->nm_funcs->nf_write_rpc_async_finish(np, req, &commit, &rlen, &wverf2);
		nmp = FUNC3(np);
		if (FUNC7(nmp))
			error = ENXIO;
		if ((nmp->nm_vers >= NFS_VER4) && FUNC8(error) &&
		    (++restart <= FUNC9(nmp))) { /* guard against no progress */
			FUNC5(&nmp->nm_lock);
			if ((error != NFSERR_GRACE) && (stategenid == nmp->nm_stategenid)) {
				FUNC4(np, "nfs_write_rpc: error %d, initiating recovery", error);
				FUNC11(nmp, error);
			}
			FUNC6(&nmp->nm_lock);
			if (np->n_flag & NREVOKE) {
				error = EIO;
			} else {
				if (error == NFSERR_GRACE)
					FUNC15(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);
				if (!(error = FUNC10(nmp)))
					continue;
			}
		}
		if (error)
			break;
		if (nfsvers == NFS_VER2) {
			tsiz -= len;
			continue;
		}

		/* check for a short write */
		if (rlen < len) {
			/* Reset the uio to reflect the actual transfer */
			*uio = *uio_save;
			FUNC22(uio, totalsize - (tsiz - rlen));
			len = rlen;
		}

		/* return lowest commit level returned */
		if (commit < committed)
			committed = commit;

		tsiz -= len;

		/* check write verifier */
		if (!wverfset) {
			wverf = wverf2;
			wverfset = 1;
		} else if (wverf != wverf2) {
			/* verifier changed, so we need to restart all the writes */
			if (++vrestart > 100) {
				/* give up after too many restarts */
				error = EIO;
				break;
			}
			*uio = *uio_save;	// Reset the uio back to the start
			committed = NFS_WRITE_FILESYNC;
			wverfset = 0;
			tsiz = totalsize;
		}
	}
	if (uio_save)
		FUNC17(uio_save);
	if (wverfset && wverfp)
		*wverfp = wverf;
	*iomodep = committed;
	if (error)
		FUNC21(uio, tsiz);
	FUNC1(537, np, committed, FUNC20(uio), error);
	return (error);
}