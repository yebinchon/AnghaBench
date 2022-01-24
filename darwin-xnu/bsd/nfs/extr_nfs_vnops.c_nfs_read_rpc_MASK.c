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
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/  uio_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; size_t nm_rsize; scalar_t__ nm_stategenid; int /*<<< orphan*/  nm_state; int /*<<< orphan*/  nm_lock; TYPE_1__* nm_funcs; } ;
typedef  scalar_t__ off_t ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_12__ {int n_flag; } ;
struct TYPE_11__ {int (* nf_read_rpc_async ) (TYPE_2__*,scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsreq**) ;int (* nf_read_rpc_async_finish ) (TYPE_2__*,struct nfsreq*,int /*<<< orphan*/ ,size_t*,int*) ;} ;

/* Variables and functions */
 int EFBIG ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int NFSERR_GRACE ; 
 struct nfsmount* FUNC3 (TYPE_2__*) ; 
 int NFS_VER2 ; 
 int NFS_VER4 ; 
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
 int FUNC12 (TYPE_2__*,scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsreq**) ; 
 int FUNC13 (TYPE_2__*,struct nfsreq*,int /*<<< orphan*/ ,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int
FUNC19(nfsnode_t np, uio_t uio, vfs_context_t ctx)
{
	struct nfsmount *nmp;
	int error = 0, nfsvers, eof = 0;
	size_t nmrsize, len, retlen;
	user_ssize_t tsiz;
	off_t txoffset;
	struct nfsreq rq, *req = &rq;
	uint32_t stategenid = 0, restart = 0;

	FUNC2(536, np, FUNC15(uio), FUNC16(uio), 0);
	nmp = FUNC3(np);
	if (FUNC7(nmp))
		return (ENXIO);
	nfsvers = nmp->nm_vers;
	nmrsize = nmp->nm_rsize;

	txoffset = FUNC15(uio);
	tsiz = FUNC16(uio);
	if ((nfsvers == NFS_VER2) && ((uint64_t)(txoffset + tsiz) > 0xffffffffULL)) {
		FUNC1(536, np, FUNC15(uio), FUNC16(uio), EFBIG);
		return (EFBIG);
	}

	while (tsiz > 0) {
		len = retlen = (tsiz > (user_ssize_t)nmrsize) ? nmrsize : (size_t)tsiz;
		FUNC0(536, np, txoffset, len, 0);
		if (np->n_flag & NREVOKE) {
			error = EIO;
			break;
		}
		if (nmp->nm_vers >= NFS_VER4)
			stategenid = nmp->nm_stategenid;
		error = nmp->nm_funcs->nf_read_rpc_async(np, txoffset, len,
				FUNC17(ctx), FUNC18(ctx), NULL, &req);
		if (!error)
			error = nmp->nm_funcs->nf_read_rpc_async_finish(np, req, uio, &retlen, &eof);
		if ((nmp->nm_vers >= NFS_VER4) && FUNC8(error) &&
		    (++restart <= FUNC9(nmp))) { /* guard against no progress */
			FUNC5(&nmp->nm_lock);
			if ((error != NFSERR_GRACE) && (stategenid == nmp->nm_stategenid)) {
				FUNC4(np, "nfs_read_rpc: error %d, initiating recovery", error);
				FUNC11(nmp, error);
			}
			FUNC6(&nmp->nm_lock);
			if (np->n_flag & NREVOKE) {
				error = EIO;
			} else {
				if (error == NFSERR_GRACE)
					FUNC14(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);
				if (!(error = FUNC10(nmp)))
					continue;
			}
		}
		if (error)
			break;
		txoffset += retlen;
		tsiz -= retlen;
		if (nfsvers != NFS_VER2) {
			if (eof || (retlen == 0))
				tsiz = 0;
		} else if (retlen < len)
			tsiz = 0;
	}

	FUNC1(536, np, eof, FUNC16(uio), error);
	return (error);
}