
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uio_t ;
typedef int uio_buf ;
typedef int thread_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct nfsreq_cbinfo {int* rcb_args; scalar_t__ rcb_func; struct nfsbuf* rcb_bp; } ;
struct TYPE_9__ {int * nmc_mhead; } ;
struct nfsreq {int r_mtx; scalar_t__ r_start; int r_flags; scalar_t__ r_xid; scalar_t__ r_resendtime; scalar_t__ r_error; TYPE_2__ r_nmrep; struct nfsreq_cbinfo r_callback; int r_cred; int r_thread; TYPE_3__* r_np; } ;
struct nfsmount {int nm_vers; int nm_stategenid; TYPE_1__* nm_funcs; int nm_state; int nm_lock; } ;
struct nfsbuf {int nb_error; int nb_endio; scalar_t__ nb_rpcs; int nb_flags; scalar_t__ nb_data; } ;
typedef scalar_t__ off_t ;
typedef TYPE_3__* nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_10__ {int n_flag; scalar_t__ n_size; } ;
struct TYPE_8__ {int (* nf_read_rpc_async_finish ) (TYPE_3__*,struct nfsreq*,int ,size_t*,int*) ;int (* nf_read_rpc_async ) (TYPE_3__*,scalar_t__,int,int ,int ,struct nfsreq_cbinfo*,struct nfsreq**) ;} ;


 int CAST_USER_ADDR_T (scalar_t__) ;
 int EINPROGRESS ;
 int EIO ;
 int ENXIO ;
 int ISSET (int ,int ) ;
 scalar_t__ IS_VALID_CRED (int ) ;
 scalar_t__ NBOFF (struct nfsbuf*) ;
 int NB_ERROR ;
 int NB_MULTASYNCRPC ;
 int NFSERR_GRACE ;
 int NFSERR_OLD_STATEID ;
 struct nfsmount* NFSTONMP (TYPE_3__*) ;
 int NFS_VER2 ;
 int NFS_VER4 ;
 int NP (TYPE_3__*,char*,int,scalar_t__,int,int) ;
 int NREVOKE ;
 scalar_t__ PZERO ;
 int R_RESTART ;
 int SET (int ,int ) ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int bzero (scalar_t__,scalar_t__) ;
 int hz ;
 int kauth_cred_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int mbuf_freem (int *) ;
 int microuptime (struct timeval*) ;
 int nfs_asyncio_resend (struct nfsreq*) ;
 int * nfs_buf_mutex ;
 int nfs_buf_read_finish (struct nfsbuf*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 scalar_t__ nfs_mount_state_error_should_restart (int) ;
 int nfs_mount_state_wait_for_recovery (struct nfsmount*) ;
 int nfs_need_recover (struct nfsmount*,int) ;
 int nfs_request_async_cancel (struct nfsreq*) ;
 int nfs_request_ref (struct nfsreq*,int ) ;
 int nfs_request_rele (struct nfsreq*) ;
 int stub1 (TYPE_3__*,struct nfsreq*,int ,size_t*,int*) ;
 int stub2 (TYPE_3__*,scalar_t__,int,int ,int ,struct nfsreq_cbinfo*,struct nfsreq**) ;
 int tsleep (int *,scalar_t__,char*,int) ;
 int uio_addiov (int ,int ,int) ;
 int uio_createwithbuffer (int,scalar_t__,int ,int ,char**,int) ;
 int wakeup (void*) ;

void
nfs_buf_read_rpc_finish(struct nfsreq *req)
{
 struct nfsmount *nmp;
 size_t rlen;
 struct nfsreq_cbinfo cb;
 struct nfsbuf *bp;
 int error = 0, nfsvers, offset, length, eof = 0, multasyncrpc, finished;
 void *wakeme = ((void*)0);
 struct nfsreq *rreq = ((void*)0);
 nfsnode_t np;
 thread_t thd;
 kauth_cred_t cred;
 uio_t auio;
 char uio_buf [ UIO_SIZEOF(1) ];

finish:
 np = req->r_np;
 thd = req->r_thread;
 cred = req->r_cred;
 if (IS_VALID_CRED(cred))
  kauth_cred_ref(cred);
 cb = req->r_callback;
 bp = cb.rcb_bp;
 if (cb.rcb_func)
  nfs_request_ref(req, 0);

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp)) {
  SET(bp->nb_flags, NB_ERROR);
  bp->nb_error = error = ENXIO;
 }
 if (error || ISSET(bp->nb_flags, NB_ERROR)) {

  nfs_request_async_cancel(req);
  goto out;
 }

 nfsvers = nmp->nm_vers;
 offset = cb.rcb_args[0];
 rlen = length = cb.rcb_args[1];

 auio = uio_createwithbuffer(1, NBOFF(bp) + offset, UIO_SYSSPACE,
                                UIO_READ, &uio_buf, sizeof(uio_buf));
 uio_addiov(auio, CAST_USER_ADDR_T(bp->nb_data + offset), length);


 error = nmp->nm_funcs->nf_read_rpc_async_finish(np, req, auio, &rlen, &eof);
 if ((error == EINPROGRESS) && cb.rcb_func) {

  if (cb.rcb_func)
   nfs_request_rele(req);
  if (IS_VALID_CRED(cred))
   kauth_cred_unref(&cred);
  return;
 }
 if ((nmp->nm_vers >= NFS_VER4) && nfs_mount_state_error_should_restart(error) && !ISSET(bp->nb_flags, NB_ERROR)) {
  lck_mtx_lock(&nmp->nm_lock);
  if ((error != NFSERR_OLD_STATEID) && (error != NFSERR_GRACE) && (cb.rcb_args[2] == nmp->nm_stategenid)) {
   NP(np, "nfs_buf_read_rpc_finish: error %d @ 0x%llx, 0x%x 0x%x, initiating recovery",
    error, NBOFF(bp)+offset, cb.rcb_args[2], nmp->nm_stategenid);
   nfs_need_recover(nmp, error);
  }
  lck_mtx_unlock(&nmp->nm_lock);
  if (np->n_flag & NREVOKE) {
   error = EIO;
  } else {
   if (error == NFSERR_GRACE) {
    if (cb.rcb_func) {




     struct timeval now;
     if (req->r_nmrep.nmc_mhead) {
      mbuf_freem(req->r_nmrep.nmc_mhead);
      req->r_nmrep.nmc_mhead = ((void*)0);
     }
     req->r_error = 0;
     microuptime(&now);
     lck_mtx_lock(&req->r_mtx);
     req->r_resendtime = now.tv_sec + 2;
     req->r_xid = 0;
     req->r_flags |= R_RESTART;
     req->r_start = 0;
     nfs_asyncio_resend(req);
     lck_mtx_unlock(&req->r_mtx);
     if (IS_VALID_CRED(cred))
      kauth_cred_unref(&cred);

     return;
    }

    tsleep(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);
   }
   if (!(error = nfs_mount_state_wait_for_recovery(nmp))) {
    rlen = 0;
    goto readagain;
   }
  }
 }
 if (error) {
  SET(bp->nb_flags, NB_ERROR);
  bp->nb_error = error;
  goto out;
 }

 if ((rlen > 0) && (bp->nb_endio < (offset + (int)rlen)))
  bp->nb_endio = offset + rlen;

 if ((nfsvers == NFS_VER2) || eof || (rlen == 0)) {

  off_t rpcrem, eofrem, rem;
  rpcrem = (length - rlen);
  eofrem = np->n_size - (NBOFF(bp) + offset + rlen);
  rem = (rpcrem < eofrem) ? rpcrem : eofrem;
  if (rem > 0)
   bzero(bp->nb_data + offset + rlen, rem);
 } else if (((int)rlen < length) && !ISSET(bp->nb_flags, NB_ERROR)) {







readagain:
  offset += rlen;
  length -= rlen;
  cb.rcb_args[0] = offset;
  cb.rcb_args[1] = length;
  if (nmp->nm_vers >= NFS_VER4)
   cb.rcb_args[2] = nmp->nm_stategenid;
  error = nmp->nm_funcs->nf_read_rpc_async(np, NBOFF(bp) + offset, length, thd, cred, &cb, &rreq);
  if (!error) {
   if (IS_VALID_CRED(cred))
    kauth_cred_unref(&cred);
   if (!cb.rcb_func) {

    req = rreq;
    rreq = ((void*)0);
    goto finish;
   }
   nfs_request_rele(req);





   return;
  }
  SET(bp->nb_flags, NB_ERROR);
  bp->nb_error = error;
 }

out:
 if (cb.rcb_func)
  nfs_request_rele(req);
 if (IS_VALID_CRED(cred))
  kauth_cred_unref(&cred);
 multasyncrpc = ISSET(bp->nb_flags, NB_MULTASYNCRPC);
 if (multasyncrpc)
  lck_mtx_lock(nfs_buf_mutex);

 bp->nb_rpcs--;
 finished = (bp->nb_rpcs == 0);

 if (multasyncrpc)
  lck_mtx_unlock(nfs_buf_mutex);

 if (finished) {
  if (multasyncrpc)
   wakeme = &bp->nb_rpcs;
  nfs_buf_read_finish(bp);
  if (wakeme)
   wakeup(wakeme);
 }
}
