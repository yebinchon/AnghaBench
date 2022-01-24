#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct nfsreq_cbinfo {int* rcb_args; struct nfsbuf* rcb_bp; int /*<<< orphan*/  (* rcb_func ) (struct nfsreq*) ;} ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; int nm_rsize; int nm_stategenid; TYPE_1__* nm_funcs; } ;
struct nfsbuf {int nb_error; int nb_flags; int nb_bufsize; int nb_rpcs; scalar_t__ nb_endio; scalar_t__ nb_offio; int /*<<< orphan*/  nb_np; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_2__ {int (* nf_read_rpc_async ) (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_cbinfo*,struct nfsreq**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EFBIG ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfsbuf*) ; 
 int NB_ASYNC ; 
 int /*<<< orphan*/  NB_ERROR ; 
 int /*<<< orphan*/  NB_MULTASYNCRPC ; 
 struct nfsmount* FUNC3 (int /*<<< orphan*/ ) ; 
 int NFS_VER2 ; 
 int NFS_VER4 ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsbuf*) ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct nfsreq*) ; 
 scalar_t__ FUNC10 (struct nfsmount*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsreq_cbinfo*,struct nfsreq**) ; 

int
FUNC12(struct nfsbuf *bp, thread_t thd, kauth_cred_t cred)
{
	struct nfsmount *nmp;
	nfsnode_t np = bp->nb_np;
	int error = 0, nfsvers, async;
	int offset, nrpcs;
	uint32_t nmrsize, length, len;
	off_t boff;
	struct nfsreq *req;
	struct nfsreq_cbinfo cb;

	nmp = FUNC3(np);
	if (FUNC10(nmp)) {
		bp->nb_error = error = ENXIO;
		FUNC4(bp->nb_flags, NB_ERROR);
		FUNC8(bp);
		return (error);
	}
	nfsvers = nmp->nm_vers;
	nmrsize = nmp->nm_rsize;

	boff = FUNC2(bp);
	offset = 0;
	length = bp->nb_bufsize;

	if (nfsvers == NFS_VER2) {
		if (boff > 0xffffffffLL) {
			bp->nb_error = error = EFBIG;
			FUNC4(bp->nb_flags, NB_ERROR);
			FUNC8(bp);
			return (error);
		}
		if ((boff + length - 1) > 0xffffffffLL)
			length = 0x100000000LL - boff;
	}

	/* Note: Can only do async I/O if nfsiods are configured. */
	async = (bp->nb_flags & NB_ASYNC);
	cb.rcb_func = async ? nfs_buf_read_rpc_finish : NULL;
	cb.rcb_bp = bp;

	bp->nb_offio = bp->nb_endio = 0;
	bp->nb_rpcs = nrpcs = (length + nmrsize - 1) / nmrsize;
	if (async && (nrpcs > 1)) {
		FUNC4(bp->nb_flags, NB_MULTASYNCRPC);
	} else {
		FUNC0(bp->nb_flags, NB_MULTASYNCRPC);
	}

	while (length > 0) {
		if (FUNC1(bp->nb_flags, NB_ERROR)) {
			error = bp->nb_error;
			break;
		}
		len = (length > nmrsize) ? nmrsize : length;
		cb.rcb_args[0] = offset;
		cb.rcb_args[1] = len;
		if (nmp->nm_vers >= NFS_VER4)
			cb.rcb_args[2] = nmp->nm_stategenid;
		req = NULL;
		error = nmp->nm_funcs->nf_read_rpc_async(np, boff + offset, len, thd, cred, &cb, &req);
		if (error)
			break;
		offset += len;
		length -= len;
		if (async)
			continue;
		FUNC9(req);
		if (FUNC1(bp->nb_flags, NB_ERROR)) {
			error = bp->nb_error;
			break;
		}
	}

	if (length > 0) {
		/*
		 * Something bad happened while trying to send the RPC(s).
		 * Wait for any outstanding requests to complete.
		 */
		bp->nb_error = error;
		FUNC4(bp->nb_flags, NB_ERROR);
		if (FUNC1(bp->nb_flags, NB_MULTASYNCRPC)) {
			nrpcs = (length + nmrsize - 1) / nmrsize;
			FUNC5(nfs_buf_mutex);
			bp->nb_rpcs -= nrpcs;
			if (bp->nb_rpcs == 0) {
				/* No RPCs left, so the buffer's done */
				FUNC6(nfs_buf_mutex);
				FUNC8(bp);
			} else {
				/* wait for the last RPC to mark it done */
				while (bp->nb_rpcs > 0)
					FUNC7(&bp->nb_rpcs, nfs_buf_mutex, 0,
						"nfs_buf_read_rpc_cancel", NULL);
				FUNC6(nfs_buf_mutex);
			}
		} else {
			FUNC8(bp);
		}
	}

	return (error);
}