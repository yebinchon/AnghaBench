
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef scalar_t__ uint32_t ;
struct nfs_open_file {scalar_t__ nof_access; scalar_t__ nof_deny; int nof_rw; int nof_d_rw; scalar_t__ nof_w_dw; scalar_t__ nof_d_w_dw; scalar_t__ nof_w_drw; scalar_t__ nof_d_w_drw; int nof_opencnt; int nof_flags; TYPE_1__* nof_owner; int nof_lock; scalar_t__ nof_d_rw_drw; scalar_t__ nof_rw_drw; scalar_t__ nof_d_r_drw; scalar_t__ nof_r_drw; scalar_t__ nof_d_rw_dw; scalar_t__ nof_rw_dw; scalar_t__ nof_d_r_dw; scalar_t__ nof_r_dw; int nof_d_w; int nof_w; int nof_d_r; int nof_r; scalar_t__ nof_mmap_deny; scalar_t__ nof_mmap_access; int nof_creator; } ;
struct nfs_lock_owner {int dummy; } ;
typedef int nfsnode_t ;
struct TYPE_4__ {scalar_t__ nm_vers; } ;
struct TYPE_3__ {int noo_cred; } ;


 int EIO ;
 int F_WRLCK ;
 int NFSERR_LOCKS_HELD ;
 TYPE_2__* NFSTONMP (int ) ;
 int NFS_OPEN_FILE_CREATE ;
 int NFS_OPEN_FILE_LOST ;
 scalar_t__ NFS_OPEN_SHARE_ACCESS_BOTH ;
 scalar_t__ NFS_OPEN_SHARE_ACCESS_WRITE ;
 scalar_t__ NFS_OPEN_SHARE_DENY_NONE ;
 scalar_t__ NFS_OPEN_SHARE_DENY_WRITE ;
 scalar_t__ NFS_VER4 ;
 int NP (int ,char*,...) ;
 int UINT64_MAX ;
 int kauth_cred_getuid (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs4_claim_delegated_state_for_open_file (struct nfs_open_file*,int ) ;
 int nfs4_close_rpc (int ,struct nfs_open_file*,int ,int ,int ) ;
 int nfs4_open_downgrade_rpc (int ,struct nfs_open_file*,int ) ;
 int nfs4_unlock_rpc (int ,struct nfs_lock_owner*,int ,int ,int ,int ,int ,int ) ;
 struct nfs_lock_owner* nfs_lock_owner_find (int ,int ,int ) ;
 int nfs_lock_owner_rele (struct nfs_lock_owner*) ;
 int nfs_open_file_add_open (struct nfs_open_file*,scalar_t__,scalar_t__,int) ;
 int nfs_open_file_remove_open (struct nfs_open_file*,scalar_t__,scalar_t__) ;
 int nfs_open_file_remove_open_find (struct nfs_open_file*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int*) ;
 int nfs_wait_bufs (int ) ;
 int vfs_context_proc (int ) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs_close(
 nfsnode_t np,
 struct nfs_open_file *nofp,
 uint32_t accessMode,
 uint32_t denyMode,
 vfs_context_t ctx)
{
 struct nfs_lock_owner *nlop;
 int error = 0, changed = 0, delegated = 0, closed = 0, downgrade = 0;
 uint32_t newAccessMode, newDenyMode;


 if (((accessMode & nofp->nof_access) != accessMode) || ((denyMode & nofp->nof_deny) != denyMode))
  NP(np, "nfs_close: mode mismatch %d %d, current %d %d, %d",
   accessMode, denyMode, nofp->nof_access, nofp->nof_deny,
   kauth_cred_getuid(nofp->nof_owner->noo_cred));





 if (denyMode == NFS_OPEN_SHARE_DENY_NONE) {
  if ((accessMode == NFS_OPEN_SHARE_ACCESS_WRITE) &&
      (nofp->nof_w == 0) && (nofp->nof_d_w == 0) &&
      (nofp->nof_rw || nofp->nof_d_rw))
   accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
 } else if (denyMode == NFS_OPEN_SHARE_DENY_WRITE) {
  if ((accessMode == NFS_OPEN_SHARE_ACCESS_WRITE) &&
      (nofp->nof_w_dw == 0) && (nofp->nof_d_w_dw == 0) &&
      (nofp->nof_rw_dw || nofp->nof_d_rw_dw))
   accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
 } else {
  if ((accessMode == NFS_OPEN_SHARE_ACCESS_WRITE) &&
      (nofp->nof_w_drw == 0) && (nofp->nof_d_w_drw == 0) &&
      (nofp->nof_rw_drw || nofp->nof_d_rw_drw))
   accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
 }

 nfs_open_file_remove_open_find(nofp, accessMode, denyMode, &newAccessMode, &newDenyMode, &delegated);
 if ((newAccessMode != nofp->nof_access) || (newDenyMode != nofp->nof_deny))
  changed = 1;
 else
  changed = 0;

 if (NFSTONMP(np)->nm_vers < NFS_VER4)
  goto v3close;

 if ((newAccessMode == 0) || (nofp->nof_opencnt == 1)) {




  nfs_wait_bufs(np);
  closed = 1;
  if (!delegated && !(nofp->nof_flags & NFS_OPEN_FILE_LOST))
   error = nfs4_close_rpc(np, nofp, vfs_context_thread(ctx), vfs_context_ucred(ctx), 0);
  if (error == NFSERR_LOCKS_HELD) {




   nlop = nfs_lock_owner_find(np, vfs_context_proc(ctx), 0);
   if (nlop) {
    nfs4_unlock_rpc(np, nlop, F_WRLCK, 0, UINT64_MAX,
     0, vfs_context_thread(ctx), vfs_context_ucred(ctx));
    nfs_lock_owner_rele(nlop);
   }
   error = nfs4_close_rpc(np, nofp, vfs_context_thread(ctx), vfs_context_ucred(ctx), 0);
  }
 } else if (changed) {




  if (!delegated && !(nofp->nof_flags & NFS_OPEN_FILE_LOST)) {
   downgrade = 1;




   if (nofp->nof_d_rw_drw || nofp->nof_d_w_drw || nofp->nof_d_r_drw ||
       nofp->nof_d_rw_dw || nofp->nof_d_w_dw || nofp->nof_d_r_dw ||
       nofp->nof_d_rw || nofp->nof_d_w || nofp->nof_d_r)
    nfs4_claim_delegated_state_for_open_file(nofp, 0);

   nfs_open_file_remove_open(nofp, accessMode, denyMode);
   error = nfs4_open_downgrade_rpc(np, nofp, ctx);
   if (error)
    nfs_open_file_add_open(nofp, accessMode, denyMode, delegated);
  }
 }

 if (error) {
  NP(np, "nfs_close: error %d, %d", error, kauth_cred_getuid(nofp->nof_owner->noo_cred));
  return (error);
 }

v3close:
 if (!downgrade)
  nfs_open_file_remove_open(nofp, accessMode, denyMode);

 if (closed) {
  lck_mtx_lock(&nofp->nof_lock);
  if (nofp->nof_r || nofp->nof_d_r || nofp->nof_w || nofp->nof_d_w || nofp->nof_d_rw ||
      (nofp->nof_rw && !((nofp->nof_flags & NFS_OPEN_FILE_CREATE) && !nofp->nof_creator && (nofp->nof_rw == 1))) ||
      nofp->nof_r_dw || nofp->nof_d_r_dw || nofp->nof_w_dw || nofp->nof_d_w_dw ||
      nofp->nof_rw_dw || nofp->nof_d_rw_dw || nofp->nof_r_drw || nofp->nof_d_r_drw ||
      nofp->nof_w_drw || nofp->nof_d_w_drw || nofp->nof_rw_drw || nofp->nof_d_rw_drw)
   NP(np, "nfs_close: unexpected count: %u.%u %u.%u %u.%u dw %u.%u %u.%u %u.%u drw %u.%u %u.%u %u.%u flags 0x%x, %d",
    nofp->nof_r, nofp->nof_d_r, nofp->nof_w, nofp->nof_d_w,
    nofp->nof_rw, nofp->nof_d_rw, nofp->nof_r_dw, nofp->nof_d_r_dw,
    nofp->nof_w_dw, nofp->nof_d_w_dw, nofp->nof_rw_dw, nofp->nof_d_rw_dw,
    nofp->nof_r_drw, nofp->nof_d_r_drw, nofp->nof_w_drw, nofp->nof_d_w_drw,
    nofp->nof_rw_drw, nofp->nof_d_rw_drw, nofp->nof_flags,
    kauth_cred_getuid(nofp->nof_owner->noo_cred));

  nofp->nof_access = nofp->nof_deny = 0;
  nofp->nof_mmap_access = nofp->nof_mmap_deny = 0;
  nofp->nof_r = nofp->nof_d_r = 0;
  nofp->nof_w = nofp->nof_d_w = 0;
  nofp->nof_rw = nofp->nof_d_rw = 0;
  nofp->nof_r_dw = nofp->nof_d_r_dw = 0;
  nofp->nof_w_dw = nofp->nof_d_w_dw = 0;
  nofp->nof_rw_dw = nofp->nof_d_rw_dw = 0;
  nofp->nof_r_drw = nofp->nof_d_r_drw = 0;
  nofp->nof_w_drw = nofp->nof_d_w_drw = 0;
  nofp->nof_rw_drw = nofp->nof_d_rw_drw = 0;
  nofp->nof_flags &= ~NFS_OPEN_FILE_CREATE;
  lck_mtx_unlock(&nofp->nof_lock);

 }
 if (nofp->nof_flags & NFS_OPEN_FILE_LOST) {
  error = EIO;
  NP(np, "nfs_close: LOST%s, %d", !nofp->nof_opencnt ? " (last)" : "",
   kauth_cred_getuid(nofp->nof_owner->noo_cred));
 }

 return (error);
}
