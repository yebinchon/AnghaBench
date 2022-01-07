
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
struct vnop_close_args {int a_fflag; int a_vp; int a_context; } ;
struct nfsmount {int nm_vers; int nm_writers; int nm_lock; } ;
struct nfs_open_owner {int noo_cred; } ;
struct nfs_open_file {int nof_deny; int nof_flags; } ;
typedef TYPE_1__* nfsnode_t ;
typedef int mount_t ;
typedef enum vtype { ____Placeholder_vtype } vtype ;
struct TYPE_13__ {int n_flag; int n_error; scalar_t__ n_openrefcnt; int n_openlock; } ;


 int EBADF ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int FHASLOCK ;
 int FREAD ;
 int FWRITE ;
 scalar_t__ ISSET (int,int ) ;
 int MNT_WAIT ;
 int NATTRINVALIDATE (TYPE_1__*) ;
 int NFS_OPEN_FILE_REOPEN ;
 int NFS_OPEN_SHARE_ACCESS_READ ;
 int NFS_OPEN_SHARE_ACCESS_WRITE ;
 int NFS_OPEN_SHARE_DENY_BOTH ;
 int NFS_OPEN_SHARE_DENY_NONE ;
 int NFS_OPEN_SHARE_DENY_READ ;
 int NFS_OPEN_SHARE_DENY_WRITE ;
 int NFS_VER2 ;
 int NMODIFIED ;
 int NNEEDINVALIDATE ;
 int NP (TYPE_1__*,char*,...) ;
 int NUPDATESIZE ;
 int NWRITEERR ;
 int VREG ;
 TYPE_1__* VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int V_IGNORE_WRITEERR ;
 int V_SAVE ;
 int kauth_cred_getuid (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs4_reopen (struct nfs_open_file*,int *) ;
 int nfs_close (TYPE_1__*,struct nfs_open_file*,int,int,int ) ;
 int nfs_data_update_size (TYPE_1__*,int ) ;
 int nfs_flush (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ nfs_mount_state_in_use_end (struct nfsmount*,int) ;
 int nfs_mount_state_in_use_start (struct nfsmount*,int *) ;
 int nfs_no_of_open_file_writers (TYPE_1__*) ;
 int nfs_node_lock_force (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int nfs_open_file_clear_busy (struct nfs_open_file*) ;
 int nfs_open_file_find (TYPE_1__*,struct nfs_open_owner*,struct nfs_open_file**,int ,int ,int ) ;
 int nfs_open_file_set_busy (struct nfs_open_file*,int *) ;
 struct nfs_open_owner* nfs_open_owner_find (struct nfsmount*,int ,int ) ;
 int nfs_open_owner_rele (struct nfs_open_owner*) ;
 int nfs_release_open_state_for_node (TYPE_1__*,int) ;
 int nfs_vinvalbuf (int ,int,int ,int) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;
 scalar_t__ vfs_isforce (int ) ;
 int vnode_mount (int ) ;
 int vnode_vtype (int ) ;

int
nfs_vnop_close(
 struct vnop_close_args *ap)





{
 vfs_context_t ctx = ap->a_context;
 vnode_t vp = ap->a_vp;
 nfsnode_t np = VTONFS(vp);
 struct nfsmount *nmp;
 int error = 0, error1, nfsvers;
 int fflag = ap->a_fflag;
 enum vtype vtype;
 int accessMode, denyMode;
 struct nfs_open_owner *noop = ((void*)0);
 struct nfs_open_file *nofp = ((void*)0);

 nmp = VTONMP(vp);
 if (!nmp)
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 vtype = vnode_vtype(vp);


 if (ISSET(np->n_flag, NUPDATESIZE))
  nfs_data_update_size(np, 0);
 nfs_node_lock_force(np);
 if (np->n_flag & NNEEDINVALIDATE) {
  np->n_flag &= ~NNEEDINVALIDATE;
  nfs_node_unlock(np);
  nfs_vinvalbuf(vp, V_SAVE|V_IGNORE_WRITEERR, ctx, 1);
  nfs_node_lock_force(np);
 }
 if ((vtype == VREG) && (np->n_flag & NMODIFIED) && (fflag & FWRITE)) {

  nfs_node_unlock(np);
  if (nfsvers != NFS_VER2)
   error = nfs_flush(np, MNT_WAIT, vfs_context_thread(ctx), 0);
  else
   error = nfs_vinvalbuf(vp, V_SAVE, ctx, 1);
  nfs_node_lock_force(np);
  NATTRINVALIDATE(np);
 }
 if (np->n_flag & NWRITEERR) {
  np->n_flag &= ~NWRITEERR;
  error = np->n_error;
 }
 nfs_node_unlock(np);

 if (vtype != VREG) {

  lck_mtx_lock(&np->n_openlock);
  if (np->n_openrefcnt == 0) {
   if (fflag & (FREAD|FWRITE)) {
    NP(np, "nfs_vnop_close: open reference underrun");
    error = EINVAL;
   }
  } else if (fflag & (FREAD|FWRITE)) {
   np->n_openrefcnt--;
  } else {

   np->n_openrefcnt = 0;
  }
  lck_mtx_unlock(&np->n_openlock);
  return (error);
 }
 error1 = error;


 accessMode = 0;
 if (fflag & FREAD)
  accessMode |= NFS_OPEN_SHARE_ACCESS_READ;
 if (fflag & FWRITE)
  accessMode |= NFS_OPEN_SHARE_ACCESS_WRITE;
 denyMode = NFS_OPEN_SHARE_DENY_NONE;


 if (!accessMode) {





  uint32_t writers;
  mount_t mp = vnode_mount(vp);
  int force = (!mp || vfs_isforce(mp));

  writers = nfs_no_of_open_file_writers(np);
  nfs_release_open_state_for_node(np, force);
  if (writers) {
   lck_mtx_lock(&nmp->nm_lock);
   if (writers > nmp->nm_writers) {
    NP(np, "nfs_vnop_close: number of write opens for mount underrun. Node has %d"
       " opens for write. Mount has total of %d opens for write\n",
       writers, nmp->nm_writers);
    nmp->nm_writers = 0;
   } else {
    nmp->nm_writers -= writers;
   }
   lck_mtx_unlock(&nmp->nm_lock);
  }

  return (error);
 } else if (fflag & FWRITE) {
  lck_mtx_lock(&nmp->nm_lock);
  if (nmp->nm_writers == 0) {
   NP(np, "nfs_vnop_close: removing open writer from mount, but mount has no files open for writing");
  } else {
   nmp->nm_writers--;
  }
  lck_mtx_unlock(&nmp->nm_lock);
 }


 noop = nfs_open_owner_find(nmp, vfs_context_ucred(ctx), 0);
 if (!noop) {

  return (EIO);
 }

restart:
 error = nfs_mount_state_in_use_start(nmp, ((void*)0));
 if (error) {
  nfs_open_owner_rele(noop);
  return (error);
 }

 error = nfs_open_file_find(np, noop, &nofp, 0, 0, 0);
 if (!error && (nofp->nof_flags & NFS_OPEN_FILE_REOPEN)) {
  nfs_mount_state_in_use_end(nmp, 0);
  error = nfs4_reopen(nofp, ((void*)0));
  nofp = ((void*)0);
  if (!error)
   goto restart;
 }
 if (error) {
  NP(np, "nfs_vnop_close: no open file for owner, error %d, %d", error, kauth_cred_getuid(noop->noo_cred));
  error = EBADF;
  goto out;
 }
 error = nfs_open_file_set_busy(nofp, ((void*)0));
 if (error) {
  nofp = ((void*)0);
  goto out;
 }

 error = nfs_close(np, nofp, accessMode, denyMode, ctx);
 if (error)
  NP(np, "nfs_vnop_close: close error %d, %d", error, kauth_cred_getuid(noop->noo_cred));

out:
 if (nofp)
  nfs_open_file_clear_busy(nofp);
 if (nfs_mount_state_in_use_end(nmp, error)) {
  nofp = ((void*)0);
  goto restart;
 }
 if (!error)
  error = error1;
 if (error)
  NP(np, "nfs_vnop_close: error %d, %d", error, kauth_cred_getuid(noop->noo_cred));
 if (noop)
  nfs_open_owner_rele(noop);
 return (error);
}
