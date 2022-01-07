
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int * uio_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int thread_t ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; size_t nm_wsize; scalar_t__ nm_stategenid; int nm_state; int nm_lock; TYPE_1__* nm_funcs; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_12__ {int n_flag; } ;
struct TYPE_11__ {int (* nf_write_rpc_async ) (TYPE_2__*,int *,size_t,int ,int ,int,int *,struct nfsreq**) ;int (* nf_write_rpc_async_finish ) (TYPE_2__*,struct nfsreq*,int*,size_t*,int*) ;} ;


 int EFBIG ;
 int EIO ;
 int ENXIO ;
 int FSDBG (int,TYPE_2__*,int,size_t,int ) ;
 int FSDBG_BOT (int,TYPE_2__*,int,size_t,int) ;
 int FSDBG_TOP (int,TYPE_2__*,int,size_t,int) ;
 int NFSERR_GRACE ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFS_VER2 ;
 int NFS_VER4 ;
 int NFS_WRITE_FILESYNC ;
 int NP (TYPE_2__*,char*,int) ;
 int NREVOKE ;
 scalar_t__ PZERO ;
 int hz ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 scalar_t__ nfs_mount_state_error_should_restart (int) ;
 scalar_t__ nfs_mount_state_max_restarts (struct nfsmount*) ;
 int nfs_mount_state_wait_for_recovery (struct nfsmount*) ;
 int nfs_need_recover (struct nfsmount*,int) ;
 int panic (char*) ;
 int stub1 (TYPE_2__*,int *,size_t,int ,int ,int,int *,struct nfsreq**) ;
 int stub2 (TYPE_2__*,struct nfsreq*,int*,size_t*,int*) ;
 int tsleep (int *,scalar_t__,char*,int) ;
 int * uio_duplicate (int *) ;
 int uio_free (int *) ;
 int uio_iovcnt (int *) ;
 int uio_offset (int *) ;
 size_t uio_resid (int *) ;
 int uio_setresid (int *,size_t) ;
 int uio_update (int *,size_t) ;

int
nfs_write_rpc2(
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
 uio_t uio_save = ((void*)0);






 FSDBG_TOP(537, np, uio_offset(uio), uio_resid(uio), *iomodep);
 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 nmwsize = nmp->nm_wsize;

 wverfset = 0;
 committed = NFS_WRITE_FILESYNC;

 totalsize = tsiz = uio_resid(uio);
 if ((nfsvers == NFS_VER2) && ((uint64_t)(uio_offset(uio) + tsiz) > 0xffffffffULL)) {
  FSDBG_BOT(537, np, uio_offset(uio), uio_resid(uio), EFBIG);
  return (EFBIG);
 }

 uio_save = uio_duplicate(uio);
 if (uio_save == ((void*)0)) {
  return (EIO);
 }

 while (tsiz > 0) {
  len = (tsiz > nmwsize) ? nmwsize : tsiz;
  FSDBG(537, np, uio_offset(uio), len, 0);
  if (np->n_flag & NREVOKE) {
   error = EIO;
   break;
  }
  if (nmp->nm_vers >= NFS_VER4)
   stategenid = nmp->nm_stategenid;
  error = nmp->nm_funcs->nf_write_rpc_async(np, uio, len, thd, cred, *iomodep, ((void*)0), &req);
  if (!error)
   error = nmp->nm_funcs->nf_write_rpc_async_finish(np, req, &commit, &rlen, &wverf2);
  nmp = NFSTONMP(np);
  if (nfs_mount_gone(nmp))
   error = ENXIO;
  if ((nmp->nm_vers >= NFS_VER4) && nfs_mount_state_error_should_restart(error) &&
      (++restart <= nfs_mount_state_max_restarts(nmp))) {
   lck_mtx_lock(&nmp->nm_lock);
   if ((error != NFSERR_GRACE) && (stategenid == nmp->nm_stategenid)) {
    NP(np, "nfs_write_rpc: error %d, initiating recovery", error);
    nfs_need_recover(nmp, error);
   }
   lck_mtx_unlock(&nmp->nm_lock);
   if (np->n_flag & NREVOKE) {
    error = EIO;
   } else {
    if (error == NFSERR_GRACE)
     tsleep(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);
    if (!(error = nfs_mount_state_wait_for_recovery(nmp)))
     continue;
   }
  }
  if (error)
   break;
  if (nfsvers == NFS_VER2) {
   tsiz -= len;
   continue;
  }


  if (rlen < len) {

   *uio = *uio_save;
   uio_update(uio, totalsize - (tsiz - rlen));
   len = rlen;
  }


  if (commit < committed)
   committed = commit;

  tsiz -= len;


  if (!wverfset) {
   wverf = wverf2;
   wverfset = 1;
  } else if (wverf != wverf2) {

   if (++vrestart > 100) {

    error = EIO;
    break;
   }
   *uio = *uio_save;
   committed = NFS_WRITE_FILESYNC;
   wverfset = 0;
   tsiz = totalsize;
  }
 }
 if (uio_save)
  uio_free(uio_save);
 if (wverfset && wverfp)
  *wverfp = wverf;
 *iomodep = committed;
 if (error)
  uio_setresid(uio, tsiz);
 FSDBG_BOT(537, np, committed, uio_resid(uio), error);
 return (error);
}
