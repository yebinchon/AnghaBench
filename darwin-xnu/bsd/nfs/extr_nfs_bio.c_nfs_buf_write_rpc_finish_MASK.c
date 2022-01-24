#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct nfsreq_cbinfo {int* rcb_args; scalar_t__ rcb_func; struct nfsbuf* rcb_bp; } ;
struct TYPE_9__ {int /*<<< orphan*/ * nmc_mhead; } ;
struct nfsreq {int /*<<< orphan*/  r_mtx; scalar_t__ r_start; int /*<<< orphan*/  r_flags; scalar_t__ r_xid; scalar_t__ r_resendtime; scalar_t__ r_error; TYPE_2__ r_nmrep; struct nfsreq_cbinfo r_callback; int /*<<< orphan*/  r_cred; int /*<<< orphan*/  r_thread; TYPE_3__* r_np; } ;
struct nfsmount {int nm_vers; int nm_stategenid; TYPE_1__* nm_funcs; int /*<<< orphan*/  nm_state; int /*<<< orphan*/  nm_lock; } ;
struct nfsbuf {int nb_flags; int nb_error; int nb_commitlevel; scalar_t__ nb_verf; scalar_t__ nb_rpcs; scalar_t__ nb_data; } ;
typedef  TYPE_3__* nfsnode_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_10__ {int n_flag; } ;
struct TYPE_8__ {int (* nf_write_rpc_async_finish ) (TYPE_3__*,struct nfsreq*,int*,size_t*,scalar_t__*) ;int (* nf_write_rpc_async ) (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nfsreq_cbinfo*,struct nfsreq**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EINPROGRESS ; 
 int EIO ; 
 int ENXIO ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nfsbuf*) ; 
 int NB_ERROR ; 
 int NB_MULTASYNCRPC ; 
 int NB_STALEWVERF ; 
 int NFSERR_GRACE ; 
 int NFSERR_OLD_STATEID ; 
 struct nfsmount* FUNC4 (TYPE_3__*) ; 
 int NFS_VER2 ; 
 int NFS_VER4 ; 
 int NFS_WRITE_FILESYNC ; 
 int NFS_WRITE_UNSTABLE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int,scalar_t__,int,int) ; 
 int NREVOKE ; 
 scalar_t__ PZERO ; 
 int /*<<< orphan*/  R_RESTART ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int hz ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfsreq*) ; 
 int /*<<< orphan*/ * nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC16 (struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct nfsmount*) ; 
 scalar_t__ FUNC18 (int) ; 
 int FUNC19 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC20 (struct nfsmount*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct nfsreq*) ; 
 int /*<<< orphan*/  FUNC22 (struct nfsreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct nfsreq*) ; 
 int FUNC24 (TYPE_3__*,struct nfsreq*,int*,size_t*,scalar_t__*) ; 
 int FUNC25 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nfsreq_cbinfo*,struct nfsreq**) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC29 (void*) ; 

void
FUNC30(struct nfsreq *req)
{
	int error = 0, nfsvers, offset, length, multasyncrpc, finished;
	int committed = NFS_WRITE_FILESYNC;
	uint64_t wverf = 0;
	size_t rlen;
	void *wakeme = NULL;
	struct nfsreq_cbinfo cb;
	struct nfsreq *wreq = NULL;
	struct nfsbuf *bp;
	struct nfsmount *nmp;
	nfsnode_t np;
	thread_t thd;
	kauth_cred_t cred;
	uio_t auio;
	char uio_buf [ FUNC7(1) ];

finish:
	np = req->r_np;
	thd = req->r_thread;
	cred = req->r_cred;
	if (FUNC2(cred))
		FUNC8(cred);
	cb = req->r_callback;
	bp = cb.rcb_bp;
	if (cb.rcb_func) /* take an extra reference on the nfsreq in case we want to resend it later due to grace error */
		FUNC22(req, 0);

	nmp = FUNC4(np);
	if (FUNC17(nmp)) {
		FUNC6(bp->nb_flags, NB_ERROR);
		bp->nb_error = error = ENXIO;
	}
	if (error || FUNC1(bp->nb_flags, NB_ERROR)) {
		/* just drop it */
		FUNC21(req);
		goto out;
	}
	nfsvers = nmp->nm_vers;

	offset = cb.rcb_args[0];
	rlen = length = cb.rcb_args[1];

	/* finish the RPC */
	error = nmp->nm_funcs->nf_write_rpc_async_finish(np, req, &committed, &rlen, &wverf);
	if ((error == EINPROGRESS) && cb.rcb_func) {
		/* async request restarted */
		if (cb.rcb_func)
			FUNC23(req);
		if (FUNC2(cred))
			FUNC9(&cred);
		return;
	}
	if ((nmp->nm_vers >= NFS_VER4) && FUNC18(error) && !FUNC1(bp->nb_flags, NB_ERROR)) {
		FUNC10(&nmp->nm_lock);
		if ((error != NFSERR_OLD_STATEID) && (error != NFSERR_GRACE) && (cb.rcb_args[2] == nmp->nm_stategenid)) {
			FUNC5(np, "nfs_buf_write_rpc_finish: error %d @ 0x%llx, 0x%x 0x%x, initiating recovery",
				error, FUNC3(bp)+offset, cb.rcb_args[2], nmp->nm_stategenid);
			FUNC20(nmp, error);
		}
		FUNC11(&nmp->nm_lock);
		if (np->n_flag & NREVOKE) {
			error = EIO;
		} else {
			if (error == NFSERR_GRACE) {
				if (cb.rcb_func) {
					/*
					 * For an async I/O request, handle a grace delay just like
					 * jukebox errors.  Set the resend time and queue it up.
					 */
					struct timeval now;
					if (req->r_nmrep.nmc_mhead) {
						FUNC12(req->r_nmrep.nmc_mhead);
						req->r_nmrep.nmc_mhead = NULL;
					}
					req->r_error = 0;
					FUNC13(&now);
					FUNC10(&req->r_mtx);
					req->r_resendtime = now.tv_sec + 2;
					req->r_xid = 0;                 // get a new XID
					req->r_flags |= R_RESTART;
					req->r_start = 0;
					FUNC15(req);
					FUNC11(&req->r_mtx);
					if (FUNC2(cred))
						FUNC9(&cred);
					/* Note: nfsreq reference taken will be dropped later when finished */
					return;
				}
				/* otherwise, just pause a couple seconds and retry */
				FUNC26(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);
			}
			if (!(error = FUNC19(nmp))) {
				rlen = 0;
				goto writeagain;
			}
		}
	}
	if (error) {
		FUNC6(bp->nb_flags, NB_ERROR);
		bp->nb_error = error;
	}
	if (error || (nfsvers == NFS_VER2))
		goto out;
	if (rlen <= 0) {
		FUNC6(bp->nb_flags, NB_ERROR);
		bp->nb_error = error = EIO;
		goto out;
	}

	/* save lowest commit level returned */
	if (committed < bp->nb_commitlevel)
		bp->nb_commitlevel = committed;

	/* check the write verifier */
	if (!bp->nb_verf) {
		bp->nb_verf = wverf;
	} else if (bp->nb_verf != wverf) {
		/* verifier changed, so buffer will need to be rewritten */
		bp->nb_flags |= NB_STALEWVERF;
		bp->nb_commitlevel = NFS_WRITE_UNSTABLE;
		bp->nb_verf = wverf;
	}

	/*
	 * check for a short write
	 *
	 * If the server didn't write all the data, then we
	 * need to issue another write for the rest of it.
	 * (Don't bother if the buffer hit an error or stale wverf.)
	 */
	if (((int)rlen < length) && !(bp->nb_flags & (NB_STALEWVERF|NB_ERROR))) {
writeagain:
		offset += rlen;
		length -= rlen;

		auio = FUNC28(1, FUNC3(bp) + offset, UIO_SYSSPACE,
			UIO_WRITE, &uio_buf, sizeof(uio_buf));
		FUNC27(auio, FUNC0(bp->nb_data + offset), length);

		cb.rcb_args[0] = offset;
		cb.rcb_args[1] = length;
		if (nmp->nm_vers >= NFS_VER4)
			cb.rcb_args[2] = nmp->nm_stategenid;

		// XXX iomode should really match the original request
		error = nmp->nm_funcs->nf_write_rpc_async(np, auio, length, thd, cred,
				NFS_WRITE_FILESYNC, &cb, &wreq);
		if (!error) {
			if (FUNC2(cred))
				FUNC9(&cred);
			if (!cb.rcb_func) {
				/* if !async we'll need to wait for this RPC to finish */
				req = wreq;
				wreq = NULL;
				goto finish;
			}
			FUNC23(req);
			/*
			 * We're done here.
			 * Outstanding RPC count is unchanged.
			 * Callback will be called when RPC is done.
			 */
			return;
		}
		FUNC6(bp->nb_flags, NB_ERROR);
		bp->nb_error = error;
	}

out:
	if (cb.rcb_func) {
		FUNC14(nmp);
		FUNC23(req);
	}
	/*
	 * Decrement outstanding RPC count on buffer
	 * and call nfs_buf_write_finish on last RPC.
	 *
	 * (Note: when there are multiple async RPCs issued for a
	 * buffer we need nfs_buffer_mutex to avoid problems when
	 * aborting a partially-initiated set of RPCs)
	 */
	multasyncrpc = FUNC1(bp->nb_flags, NB_MULTASYNCRPC);
	if (multasyncrpc)
		FUNC10(nfs_buf_mutex);

	bp->nb_rpcs--;
	finished = (bp->nb_rpcs == 0);

	if (multasyncrpc)
		FUNC11(nfs_buf_mutex);

	if (finished) {
		if (multasyncrpc)
			wakeme = &bp->nb_rpcs;
		FUNC16(bp, thd, cred);
		if (wakeme)
			FUNC29(wakeme);
	}

	if (FUNC2(cred))
		FUNC9(&cred);
}