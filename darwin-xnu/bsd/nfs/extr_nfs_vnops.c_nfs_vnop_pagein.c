
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vnode_t ;
typedef size_t vm_offset_t ;
typedef scalar_t__ upl_t ;
typedef int upl_page_info_t ;
typedef int uio_t ;
typedef int uio_buf ;
typedef scalar_t__ uint32_t ;
typedef int thread_t ;
struct vnop_pagein_args {scalar_t__ a_pl; size_t a_size; size_t a_f_offset; size_t a_pl_offset; int a_flags; int a_context; int a_vp; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {size_t nm_rsize; scalar_t__ nm_vers; scalar_t__ nm_stategenid; int nm_state; int nm_lock; TYPE_1__* nm_funcs; } ;
typedef int req ;
typedef size_t off_t ;
typedef TYPE_2__* nfsnode_t ;
typedef scalar_t__ kern_return_t ;
typedef int kauth_cred_t ;
struct TYPE_13__ {int pageins; } ;
struct TYPE_12__ {int n_flag; scalar_t__ n_size; } ;
struct TYPE_11__ {int (* nf_read_rpc_async ) (TYPE_2__*,size_t,size_t,int ,int ,int *,struct nfsreq**) ;int (* nf_read_rpc_async_finish ) (TYPE_2__*,struct nfsreq*,int ,size_t*,int *) ;} ;


 int CAST_USER_ADDR_T (size_t) ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int FSDBG (int,TYPE_2__*,size_t,int,size_t) ;
 int IS_VALID_CRED (int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MAXPAGINGREQS ;
 size_t MIN (size_t,size_t) ;
 int NFSERR_GRACE ;
 scalar_t__ NFS_VER4 ;
 int NP (TYPE_2__*,char*,...) ;
 int NREVOKE ;
 int OSAddAtomic64 (int,int *) ;
 size_t PAGE_MASK_64 ;
 scalar_t__ PZERO ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int UPL_ABORT_ERROR ;
 int UPL_ABORT_FREE_ON_EMPTY ;
 int UPL_COMMIT_CLEAR_DIRTY ;
 int UPL_COMMIT_FREE_ON_EMPTY ;
 int UPL_NOCOMMIT ;
 TYPE_2__* VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int bzero (char*,int) ;
 scalar_t__ current_thread () ;
 int hz ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 scalar_t__ nfs_mount_state_error_should_restart (int) ;
 scalar_t__ nfs_mount_state_max_restarts (struct nfsmount*) ;
 int nfs_mount_state_wait_for_recovery (struct nfsmount*) ;
 int nfs_need_recover (struct nfsmount*,int) ;
 int nfs_request_async_cancel (struct nfsreq*) ;
 TYPE_7__ nfsstats ;
 int panic (char*,...) ;
 int printf (char*,size_t) ;
 int stub1 (TYPE_2__*,size_t,size_t,int ,int ,int *,struct nfsreq**) ;
 int stub2 (TYPE_2__*,struct nfsreq*,int ,size_t*,int *) ;
 int tsleep (int *,scalar_t__,char*,int) ;
 int ubc_getcred (int ) ;
 int ubc_upl_abort_range (scalar_t__,size_t,size_t,int) ;
 int ubc_upl_commit_range (scalar_t__,size_t,size_t,int) ;
 scalar_t__ ubc_upl_map (scalar_t__,size_t*) ;
 int * ubc_upl_pageinfo (scalar_t__) ;
 int ubc_upl_unmap (scalar_t__) ;
 int uio_addiov (int ,int ,size_t) ;
 int uio_createwithbuffer (int,size_t,int ,int ,char**,int) ;
 TYPE_2__* uio_offset (int ) ;
 int uio_reset (int ,TYPE_2__*,int ,int ) ;
 size_t uio_resid (int ) ;
 int uio_update (int ,int) ;
 int upl_ubc_alias_set (scalar_t__,uintptr_t,uintptr_t) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs_vnop_pagein(
 struct vnop_pagein_args *ap)
{
 vnode_t vp = ap->a_vp;
 upl_t pl = ap->a_pl;
 size_t size = ap->a_size;
 off_t f_offset = ap->a_f_offset;
 vm_offset_t pl_offset = ap->a_pl_offset;
 int flags = ap->a_flags;
 thread_t thd;
 kauth_cred_t cred;
 nfsnode_t np = VTONFS(vp);
 size_t nmrsize, iosize, txsize, rxsize, retsize;
 off_t txoffset;
 struct nfsmount *nmp;
 int error = 0;
 vm_offset_t ioaddr, rxaddr;
 uio_t uio;
 char uio_buf [ UIO_SIZEOF(1) ];
 int nofreeupl = flags & UPL_NOCOMMIT;
 upl_page_info_t *plinfo;

 struct nfsreq *req[16];
 int nextsend, nextwait;
 uint32_t stategenid = 0, restart = 0;
 kern_return_t kret;

 FSDBG(322, np, f_offset, size, flags);
 if (pl == (upl_t)((void*)0))
  panic("nfs_pagein: no upl");

 if (size <= 0) {
  printf("nfs_pagein: invalid size %ld", size);
  if (!nofreeupl)
   (void) ubc_upl_abort_range(pl, pl_offset, size, 0);
  return (EINVAL);
 }
 if (f_offset < 0 || f_offset >= (off_t)np->n_size || (f_offset & PAGE_MASK_64)) {
  if (!nofreeupl)
   ubc_upl_abort_range(pl, pl_offset, size,
    UPL_ABORT_ERROR | UPL_ABORT_FREE_ON_EMPTY);
  return (EINVAL);
 }

 thd = vfs_context_thread(ap->a_context);
 cred = ubc_getcred(vp);
 if (!IS_VALID_CRED(cred))
  cred = vfs_context_ucred(ap->a_context);

 uio = uio_createwithbuffer(1, f_offset, UIO_SYSSPACE, UIO_READ,
  &uio_buf, sizeof(uio_buf));

 nmp = VTONMP(vp);
 if (nfs_mount_gone(nmp)) {
  if (!nofreeupl)
   ubc_upl_abort_range(pl, pl_offset, size,
    UPL_ABORT_ERROR | UPL_ABORT_FREE_ON_EMPTY);
  return (ENXIO);
 }
 nmrsize = nmp->nm_rsize;

 plinfo = ubc_upl_pageinfo(pl);
 kret = ubc_upl_map(pl, &ioaddr);
 if (kret != KERN_SUCCESS)
  panic("nfs_vnop_pagein: ubc_upl_map() failed with (%d)", kret);
 ioaddr += pl_offset;

tryagain:
 if (nmp->nm_vers >= NFS_VER4)
  stategenid = nmp->nm_stategenid;
 txsize = rxsize = size;
 txoffset = f_offset;
 rxaddr = ioaddr;

 bzero(req, sizeof(req));
 nextsend = nextwait = 0;
 do {
  if (np->n_flag & NREVOKE) {
   error = EIO;
   break;
  }

  while ((txsize > 0) && (req[nextsend] == ((void*)0))) {
   iosize = MIN(nmrsize, txsize);
   if ((error = nmp->nm_funcs->nf_read_rpc_async(np, txoffset, iosize, thd, cred, ((void*)0), &req[nextsend]))) {
    req[nextsend] = ((void*)0);
    break;
   }
   txoffset += iosize;
   txsize -= iosize;
   nextsend = (nextsend + 1) % 16;
  }

  while ((rxsize > 0) && req[nextwait]) {
   iosize = retsize = MIN(nmrsize, rxsize);
   uio_reset(uio, uio_offset(uio), UIO_SYSSPACE, UIO_READ);
   uio_addiov(uio, CAST_USER_ADDR_T(rxaddr), iosize);
   FSDBG(322, uio_offset(uio), uio_resid(uio), rxaddr, rxsize);



   OSAddAtomic64(1, &nfsstats.pageins);
   error = nmp->nm_funcs->nf_read_rpc_async_finish(np, req[nextwait], uio, &retsize, ((void*)0));
   req[nextwait] = ((void*)0);
   nextwait = (nextwait + 1) % 16;
   if ((nmp->nm_vers >= NFS_VER4) && nfs_mount_state_error_should_restart(error)) {
    lck_mtx_lock(&nmp->nm_lock);
    if ((error != NFSERR_GRACE) && (stategenid == nmp->nm_stategenid)) {
     NP(np, "nfs_vnop_pagein: error %d, initiating recovery", error);
     nfs_need_recover(nmp, error);
    }
    lck_mtx_unlock(&nmp->nm_lock);
    restart++;
    goto cancel;
   }
   if (error) {
    FSDBG(322, uio_offset(uio), uio_resid(uio), error, -1);
    break;
   }
   if (retsize < iosize) {

    int zcnt = iosize - retsize;
    bzero((char *)rxaddr + retsize, zcnt);
    FSDBG(324, uio_offset(uio), retsize, zcnt, rxaddr);
    uio_update(uio, zcnt);
   }
   rxaddr += iosize;
   rxsize -= iosize;
   if (txsize)
    break;
  }
 } while (!error && (txsize || rxsize));

 restart = 0;

 if (error) {
cancel:

  while (req[nextwait]) {
   nfs_request_async_cancel(req[nextwait]);
   req[nextwait] = ((void*)0);
   nextwait = (nextwait + 1) % 16;
  }
  if (np->n_flag & NREVOKE) {
   error = EIO;
  } else if (restart) {
   if (restart <= nfs_mount_state_max_restarts(nmp)) {
    if (error == NFSERR_GRACE)
     tsleep(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);
    if (!(error = nfs_mount_state_wait_for_recovery(nmp)))
     goto tryagain;
   } else {
    NP(np, "nfs_pagein: too many restarts, aborting");
   }
  }
 }

 ubc_upl_unmap(pl);

 if (!nofreeupl) {
  if (error)
   ubc_upl_abort_range(pl, pl_offset, size,
         UPL_ABORT_ERROR |
         UPL_ABORT_FREE_ON_EMPTY);
  else
   ubc_upl_commit_range(pl, pl_offset, size,
          UPL_COMMIT_CLEAR_DIRTY |
          UPL_COMMIT_FREE_ON_EMPTY);
 }
 return (error);
}
