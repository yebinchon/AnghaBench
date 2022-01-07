
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnop_mmap_args {int a_fflags; int a_vp; int a_context; } ;
struct nfsmount {scalar_t__ nm_vers; scalar_t__ nm_curdeadtimeout; scalar_t__ nm_deadtimeout; int nm_lock; int nm_mappers; scalar_t__ nm_deadto_start; int nm_state; } ;
struct nfs_open_owner {int noo_cred; } ;
struct nfs_open_file {int nof_flags; int nof_access; int nof_deny; int nof_mmap_access; int nof_mmap_deny; TYPE_1__* nof_owner; scalar_t__ nof_rw_drw; scalar_t__ nof_rw_dw; scalar_t__ nof_rw; scalar_t__ nof_d_rw_drw; scalar_t__ nof_d_rw_dw; scalar_t__ nof_d_rw; scalar_t__ nof_r_drw; scalar_t__ nof_r_dw; scalar_t__ nof_r; scalar_t__ nof_d_r_drw; scalar_t__ nof_d_r_dw; scalar_t__ nof_d_r; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_11__ {int n_flag; } ;
struct TYPE_10__ {int noo_cred; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int EPERM ;
 int NFSSTA_SQUISHY ;
 int NFS_OPEN_FILE_LOST ;
 int NFS_OPEN_FILE_NEEDCLOSE ;
 int NFS_OPEN_FILE_REOPEN ;
 int NFS_OPEN_SHARE_ACCESS_BOTH ;
 int NFS_OPEN_SHARE_ACCESS_READ ;
 int NFS_OPEN_SHARE_ACCESS_WRITE ;
 int NFS_OPEN_SHARE_DENY_BOTH ;
 int NFS_OPEN_SHARE_DENY_NONE ;
 int NFS_OPEN_SHARE_DENY_WRITE ;
 scalar_t__ NFS_VER4 ;
 int NISMAPPED ;
 int NP (TYPE_2__*,char*,int,int ,...) ;
 int NREVOKE ;
 int PROT_READ ;
 int PROT_WRITE ;
 TYPE_2__* VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int kauth_cred_getuid (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs4_open (TYPE_2__*,struct nfs_open_file*,int,int,int ) ;
 int nfs4_reopen (struct nfs_open_file*,int *) ;
 int nfs_close (TYPE_2__*,struct nfs_open_file*,int,int,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_mount_state_error_should_restart (int) ;
 scalar_t__ nfs_mount_state_in_use_end (struct nfsmount*,int) ;
 int nfs_mount_state_in_use_start (struct nfsmount*,int *) ;
 int nfs_node_lock_force (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_open_file_add_open (struct nfs_open_file*,int,int,int) ;
 int nfs_open_file_clear_busy (struct nfs_open_file*) ;
 int nfs_open_file_find (TYPE_2__*,struct nfs_open_owner*,struct nfs_open_file**,int ,int ,int) ;
 int nfs_open_file_set_busy (struct nfs_open_file*,int *) ;
 struct nfs_open_owner* nfs_open_owner_find (struct nfsmount*,int ,int) ;
 int nfs_open_owner_rele (struct nfs_open_owner*) ;
 int thread_tid (int ) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;
 int vnode_isreg (int ) ;

int
nfs_vnop_mmap(
 struct vnop_mmap_args *ap)





{
 vfs_context_t ctx = ap->a_context;
 vnode_t vp = ap->a_vp;
 nfsnode_t np = VTONFS(vp);
 int error = 0, accessMode, denyMode, delegated;
 struct nfsmount *nmp;
 struct nfs_open_owner *noop = ((void*)0);
 struct nfs_open_file *nofp = ((void*)0);

 nmp = VTONMP(vp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);

 if (!vnode_isreg(vp) || !(ap->a_fflags & (PROT_READ|PROT_WRITE)))
  return (EINVAL);
 if (np->n_flag & NREVOKE)
  return (EIO);






 accessMode = NFS_OPEN_SHARE_ACCESS_READ;
 if (ap->a_fflags & PROT_WRITE)
  accessMode |= NFS_OPEN_SHARE_ACCESS_WRITE;
 denyMode = NFS_OPEN_SHARE_DENY_NONE;

 noop = nfs_open_owner_find(nmp, vfs_context_ucred(ctx), 1);
 if (!noop)
  return (ENOMEM);

restart:
 error = nfs_mount_state_in_use_start(nmp, ((void*)0));
 if (error) {
  nfs_open_owner_rele(noop);
  return (error);
 }
 if (np->n_flag & NREVOKE) {
  error = EIO;
  nfs_mount_state_in_use_end(nmp, 0);
  nfs_open_owner_rele(noop);
  return (error);
 }

 error = nfs_open_file_find(np, noop, &nofp, 0, 0, 1);
 if (error || (!error && (nofp->nof_flags & NFS_OPEN_FILE_LOST))) {
  NP(np, "nfs_vnop_mmap: no open file for owner, error %d, %d", error, kauth_cred_getuid(noop->noo_cred));
  error = EPERM;
 }
 if (!error && (nofp->nof_flags & NFS_OPEN_FILE_REOPEN)) {
  nfs_mount_state_in_use_end(nmp, 0);
  error = nfs4_reopen(nofp, ((void*)0));
  nofp = ((void*)0);
  if (!error)
   goto restart;
 }
 if (!error)
  error = nfs_open_file_set_busy(nofp, ((void*)0));
 if (error) {
  nofp = ((void*)0);
  goto out;
 }
 if (!(nofp->nof_access & NFS_OPEN_SHARE_ACCESS_READ)) {
  if (nofp->nof_flags & NFS_OPEN_FILE_NEEDCLOSE) {

   NP(np, "nfs_vnop_mmap: File already needs close access: 0x%x, cred: %d thread: %lld",
      nofp->nof_access, kauth_cred_getuid(nofp->nof_owner->noo_cred), thread_tid(vfs_context_thread(ctx)));
  }




  if (accessMode != NFS_OPEN_SHARE_ACCESS_READ || (accessMode & nofp->nof_deny)) {

   error = EPERM;
   goto out;
  }

  if (nmp->nm_vers < NFS_VER4) {

   nfs_open_file_add_open(nofp, NFS_OPEN_SHARE_ACCESS_READ, NFS_OPEN_SHARE_DENY_NONE, 0);
   error = 0;
  } else {
   error = nfs4_open(np, nofp, NFS_OPEN_SHARE_ACCESS_READ, NFS_OPEN_SHARE_DENY_NONE, ctx);
  }
  if (!error)
   nofp->nof_flags |= NFS_OPEN_FILE_NEEDCLOSE;
  if (error)
   goto out;
 }


 if (accessMode == NFS_OPEN_SHARE_ACCESS_BOTH) {
  if (nofp->nof_d_rw || nofp->nof_d_rw_dw || nofp->nof_d_rw_drw) {
   delegated = 1;
   if (nofp->nof_d_rw)
    denyMode = NFS_OPEN_SHARE_DENY_NONE;
   else if (nofp->nof_d_rw_dw)
    denyMode = NFS_OPEN_SHARE_DENY_WRITE;
   else if (nofp->nof_d_rw_drw)
    denyMode = NFS_OPEN_SHARE_DENY_BOTH;
  } else if (nofp->nof_rw || nofp->nof_rw_dw || nofp->nof_rw_drw) {
   delegated = 0;
   if (nofp->nof_rw)
    denyMode = NFS_OPEN_SHARE_DENY_NONE;
   else if (nofp->nof_rw_dw)
    denyMode = NFS_OPEN_SHARE_DENY_WRITE;
   else if (nofp->nof_rw_drw)
    denyMode = NFS_OPEN_SHARE_DENY_BOTH;
  } else {
   error = EPERM;
  }
 } else {
  if (nofp->nof_d_r || nofp->nof_d_r_dw || nofp->nof_d_r_drw) {
   delegated = 1;
   if (nofp->nof_d_r)
    denyMode = NFS_OPEN_SHARE_DENY_NONE;
   else if (nofp->nof_d_r_dw)
    denyMode = NFS_OPEN_SHARE_DENY_WRITE;
   else if (nofp->nof_d_r_drw)
    denyMode = NFS_OPEN_SHARE_DENY_BOTH;
  } else if (nofp->nof_r || nofp->nof_r_dw || nofp->nof_r_drw) {
   delegated = 0;
   if (nofp->nof_r)
    denyMode = NFS_OPEN_SHARE_DENY_NONE;
   else if (nofp->nof_r_dw)
    denyMode = NFS_OPEN_SHARE_DENY_WRITE;
   else if (nofp->nof_r_drw)
    denyMode = NFS_OPEN_SHARE_DENY_BOTH;
  } else if (nofp->nof_d_rw || nofp->nof_d_rw_dw || nofp->nof_d_rw_drw) {





   delegated = 1;
   accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
   if (nofp->nof_d_rw)
    denyMode = NFS_OPEN_SHARE_DENY_NONE;
   else if (nofp->nof_d_rw_dw)
    denyMode = NFS_OPEN_SHARE_DENY_WRITE;
   else if (nofp->nof_d_rw_drw)
    denyMode = NFS_OPEN_SHARE_DENY_BOTH;
  } else if (nofp->nof_rw || nofp->nof_rw_dw || nofp->nof_rw_drw) {
   delegated = 0;
   accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
   if (nofp->nof_rw)
    denyMode = NFS_OPEN_SHARE_DENY_NONE;
   else if (nofp->nof_rw_dw)
    denyMode = NFS_OPEN_SHARE_DENY_WRITE;
   else if (nofp->nof_rw_drw)
    denyMode = NFS_OPEN_SHARE_DENY_BOTH;
  } else {
   error = EPERM;
  }
 }
 if (error)
  goto out;






 if ((nofp->nof_mmap_access > accessMode) ||
     ((nofp->nof_mmap_access == accessMode) && (nofp->nof_mmap_deny <= denyMode)))
  goto out;


 if (nofp->nof_mmap_access) {
  error = nfs_close(np, nofp, nofp->nof_mmap_access, nofp->nof_mmap_deny, ctx);
  if (error) {
   if (!nfs_mount_state_error_should_restart(error))
    NP(np, "nfs_vnop_mmap: close of previous mmap mode failed: %d, %d", error, kauth_cred_getuid(nofp->nof_owner->noo_cred));
   NP(np, "nfs_vnop_mmap: update, close error %d, %d", error, kauth_cred_getuid(nofp->nof_owner->noo_cred));
   goto out;
  }
  nofp->nof_mmap_access = nofp->nof_mmap_deny = 0;
 }

 nfs_open_file_add_open(nofp, accessMode, denyMode, delegated);
 nofp->nof_mmap_access = accessMode;
 nofp->nof_mmap_deny = denyMode;

out:
 if (nofp)
  nfs_open_file_clear_busy(nofp);
 if (nfs_mount_state_in_use_end(nmp, error)) {
  nofp = ((void*)0);
  goto restart;
 }
 if (noop)
  nfs_open_owner_rele(noop);

 if (!error) {
  int ismapped = 0;
  nfs_node_lock_force(np);
  if ((np->n_flag & NISMAPPED) == 0) {
   np->n_flag |= NISMAPPED;
   ismapped = 1;
  }
  nfs_node_unlock(np);
  if (ismapped) {
   lck_mtx_lock(&nmp->nm_lock);
   nmp->nm_state &= ~NFSSTA_SQUISHY;
   nmp->nm_curdeadtimeout = nmp->nm_deadtimeout;
   if (nmp->nm_curdeadtimeout <= 0)
    nmp->nm_deadto_start = 0;
   nmp->nm_mappers++;
   lck_mtx_unlock(&nmp->nm_lock);
  }
 }

 return (error);
}
