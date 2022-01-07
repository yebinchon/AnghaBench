
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uio_t ;
typedef int uio_buf ;
typedef scalar_t__ uint64_t ;
typedef int thread_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct nfsreq_cbinfo {int* rcb_args; scalar_t__ rcb_func; struct nfsbuf* rcb_bp; } ;
struct TYPE_9__ {int * nmc_mhead; } ;
struct nfsreq {int r_mtx; scalar_t__ r_start; int r_flags; scalar_t__ r_xid; scalar_t__ r_resendtime; scalar_t__ r_error; TYPE_2__ r_nmrep; struct nfsreq_cbinfo r_callback; int r_cred; int r_thread; TYPE_3__* r_np; } ;
struct nfsmount {int nm_vers; int nm_stategenid; TYPE_1__* nm_funcs; int nm_state; int nm_lock; } ;
struct nfsbuf {int nb_flags; int nb_error; int nb_commitlevel; scalar_t__ nb_verf; scalar_t__ nb_rpcs; scalar_t__ nb_data; } ;
typedef TYPE_3__* nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_10__ {int n_flag; } ;
struct TYPE_8__ {int (* nf_write_rpc_async_finish ) (TYPE_3__*,struct nfsreq*,int*,size_t*,scalar_t__*) ;int (* nf_write_rpc_async ) (TYPE_3__*,int ,int,int ,int ,int,struct nfsreq_cbinfo*,struct nfsreq**) ;} ;


 int CAST_USER_ADDR_T (scalar_t__) ;
 int EINPROGRESS ;
 int EIO ;
 int ENXIO ;
 int ISSET (int,int) ;
 scalar_t__ IS_VALID_CRED (int ) ;
 scalar_t__ NBOFF (struct nfsbuf*) ;
 int NB_ERROR ;
 int NB_MULTASYNCRPC ;
 int NB_STALEWVERF ;
 int NFSERR_GRACE ;
 int NFSERR_OLD_STATEID ;
 struct nfsmount* NFSTONMP (TYPE_3__*) ;
 int NFS_VER2 ;
 int NFS_VER4 ;
 int NFS_WRITE_FILESYNC ;
 int NFS_WRITE_UNSTABLE ;
 int NP (TYPE_3__*,char*,int,scalar_t__,int,int) ;
 int NREVOKE ;
 scalar_t__ PZERO ;
 int R_RESTART ;
 int SET (int,int) ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int hz ;
 int kauth_cred_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int mbuf_freem (int *) ;
 int microuptime (struct timeval*) ;
 int nfs_async_write_done (struct nfsmount*) ;
 int nfs_asyncio_resend (struct nfsreq*) ;
 int * nfs_buf_mutex ;
 int nfs_buf_write_finish (struct nfsbuf*,int ,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 scalar_t__ nfs_mount_state_error_should_restart (int) ;
 int nfs_mount_state_wait_for_recovery (struct nfsmount*) ;
 int nfs_need_recover (struct nfsmount*,int) ;
 int nfs_request_async_cancel (struct nfsreq*) ;
 int nfs_request_ref (struct nfsreq*,int ) ;
 int nfs_request_rele (struct nfsreq*) ;
 int stub1 (TYPE_3__*,struct nfsreq*,int*,size_t*,scalar_t__*) ;
 int stub2 (TYPE_3__*,int ,int,int ,int ,int,struct nfsreq_cbinfo*,struct nfsreq**) ;
 int tsleep (int *,scalar_t__,char*,int) ;
 int uio_addiov (int ,int ,int) ;
 int uio_createwithbuffer (int,scalar_t__,int ,int ,char**,int) ;
 int wakeup (void*) ;

void
nfs_buf_write_rpc_finish(struct nfsreq *req)
{
 int error = 0, nfsvers, offset, length, multasyncrpc, finished;
 int committed = NFS_WRITE_FILESYNC;
 uint64_t wverf = 0;
 size_t rlen;
 void *wakeme = ((void*)0);
 struct nfsreq_cbinfo cb;
 struct nfsreq *wreq = ((void*)0);
 struct nfsbuf *bp;
 struct nfsmount *nmp;
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


 error = nmp->nm_funcs->nf_write_rpc_async_finish(np, req, &committed, &rlen, &wverf);
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
   NP(np, "nfs_buf_write_rpc_finish: error %d @ 0x%llx, 0x%x 0x%x, initiating recovery",
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
    goto writeagain;
   }
  }
 }
 if (error) {
  SET(bp->nb_flags, NB_ERROR);
  bp->nb_error = error;
 }
 if (error || (nfsvers == NFS_VER2))
  goto out;
 if (rlen <= 0) {
  SET(bp->nb_flags, NB_ERROR);
  bp->nb_error = error = EIO;
  goto out;
 }


 if (committed < bp->nb_commitlevel)
  bp->nb_commitlevel = committed;


 if (!bp->nb_verf) {
  bp->nb_verf = wverf;
 } else if (bp->nb_verf != wverf) {

  bp->nb_flags |= NB_STALEWVERF;
  bp->nb_commitlevel = NFS_WRITE_UNSTABLE;
  bp->nb_verf = wverf;
 }
 if (((int)rlen < length) && !(bp->nb_flags & (NB_STALEWVERF|NB_ERROR))) {
writeagain:
  offset += rlen;
  length -= rlen;

  auio = uio_createwithbuffer(1, NBOFF(bp) + offset, UIO_SYSSPACE,
   UIO_WRITE, &uio_buf, sizeof(uio_buf));
  uio_addiov(auio, CAST_USER_ADDR_T(bp->nb_data + offset), length);

  cb.rcb_args[0] = offset;
  cb.rcb_args[1] = length;
  if (nmp->nm_vers >= NFS_VER4)
   cb.rcb_args[2] = nmp->nm_stategenid;


  error = nmp->nm_funcs->nf_write_rpc_async(np, auio, length, thd, cred,
    NFS_WRITE_FILESYNC, &cb, &wreq);
  if (!error) {
   if (IS_VALID_CRED(cred))
    kauth_cred_unref(&cred);
   if (!cb.rcb_func) {

    req = wreq;
    wreq = ((void*)0);
    goto finish;
   }
   nfs_request_rele(req);





   return;
  }
  SET(bp->nb_flags, NB_ERROR);
  bp->nb_error = error;
 }

out:
 if (cb.rcb_func) {
  nfs_async_write_done(nmp);
  nfs_request_rele(req);
 }
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
  nfs_buf_write_finish(bp, thd, cred);
  if (wakeme)
   wakeup(wakeme);
 }

 if (IS_VALID_CRED(cred))
  kauth_cred_unref(&cred);
}
