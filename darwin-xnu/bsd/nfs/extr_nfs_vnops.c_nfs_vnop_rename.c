
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef int * vnode_t ;
typedef int vfs_context_t ;
struct vnop_rename_args {struct componentname* a_fcnp; struct componentname* a_tcnp; int * a_tvp; int * a_tdvp; int * a_fvp; int * a_fdvp; int a_context; } ;
struct nfsmount {int nm_vers; TYPE_1__* nm_funcs; } ;
struct nfs_vattr {int nva_nlink; } ;
struct componentname {int cn_namelen; int cn_nameptr; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int * mount_t ;
struct TYPE_29__ {int n_hflag; int n_openflags; int n_flag; int * n_parent; int n_sillyrename; } ;
struct TYPE_28__ {int (* nf_rename_rpc ) (TYPE_2__*,int ,int ,TYPE_2__*,int ,int ,int ) ;} ;


 int ENOENT ;
 int ENXIO ;
 int EXDEV ;
 int FSDBG (int,int ,TYPE_2__*,int,int) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFS_VER4 ;
 int NGA_CACHED ;
 int NHHASHED ;
 int NHLOCKED ;
 int NHLOCKWANT ;
 int NMODIFIED ;
 int NNEGNCENTRIES ;
 int N_DELEG_MASK ;
 int PINOD ;
 scalar_t__ VDIR ;
 TYPE_2__* VTONFS (int *) ;
 int cache_enter (int *,int *,struct componentname*) ;
 int cache_purge_negatives (int *) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int msleep (TYPE_2__*,int ,int ,char*,int *) ;
 int n_hash ;
 int nfs4_delegation_return (TYPE_2__*,int ,int ,int ) ;
 int nfs_getattr (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ nfs_getattrcache (TYPE_2__*,struct nfs_vattr*,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_name_cache_purge (TYPE_2__*,TYPE_2__*,struct componentname*,int ) ;
 int nfs_node_clear_busy4 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int nfs_node_hash_mutex ;
 int nfs_node_lock_force (TYPE_2__*) ;
 int nfs_node_set_busy4 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int ) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_sillyrename (TYPE_2__*,TYPE_2__*,struct componentname*,int ) ;
 int stub1 (TYPE_2__*,int ,int ,TYPE_2__*,int ,int ,int ) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;
 int vnode_get (int *) ;
 int vnode_isinuse (int *,int ) ;
 int * vnode_mount (int *) ;
 int vnode_put (int *) ;
 int vnode_recycle (int *) ;
 int vnode_ref (int *) ;
 int vnode_rele (int *) ;
 scalar_t__ vnode_vtype (int *) ;
 int wakeup (TYPE_2__*) ;

int
nfs_vnop_rename(
 struct vnop_rename_args *ap)
{
 vfs_context_t ctx = ap->a_context;
 vnode_t fdvp = ap->a_fdvp;
 vnode_t fvp = ap->a_fvp;
 vnode_t tdvp = ap->a_tdvp;
 vnode_t tvp = ap->a_tvp;
 nfsnode_t fdnp, fnp, tdnp, tnp;
 struct componentname *tcnp = ap->a_tcnp;
 struct componentname *fcnp = ap->a_fcnp;
 int error, nfsvers, inuse=0, tvprecycle=0, locked=0;
 mount_t fmp, tdmp, tmp;
 struct nfs_vattr nvattr;
 struct nfsmount *nmp;

 fdnp = VTONFS(fdvp);
 fnp = VTONFS(fvp);
 tdnp = VTONFS(tdvp);
 tnp = tvp ? VTONFS(tvp) : ((void*)0);

 nmp = NFSTONMP(fdnp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;

 error = nfs_node_set_busy4(fdnp, fnp, tdnp, tnp, vfs_context_thread(ctx));
 if (error)
  return (error);

 if (tvp && (tvp != fvp)) {

  lck_mtx_lock(nfs_node_hash_mutex);
  while (tnp->n_hflag & NHLOCKED) {
   tnp->n_hflag |= NHLOCKWANT;
   msleep(tnp, nfs_node_hash_mutex, PINOD, "nfs_rename", ((void*)0));
  }
  tnp->n_hflag |= NHLOCKED;
  lck_mtx_unlock(nfs_node_hash_mutex);
  locked = 1;
 }


 fmp = vnode_mount(fvp);
 tmp = tvp ? vnode_mount(tvp) : ((void*)0);
 tdmp = vnode_mount(tdvp);
 if ((fmp != tdmp) || (tvp && (fmp != tmp))) {
  error = EXDEV;
  goto out;
 }
 if (tvp && (tvp != fvp))
  inuse = vnode_isinuse(tvp, 0);
 if (inuse && !tnp->n_sillyrename && (vnode_vtype(tvp) != VDIR)) {
  error = nfs_sillyrename(tdnp, tnp, tcnp, ctx);
  if (error) {

   goto out;
  } else {

   tvp = ((void*)0);
  }
 } else if (tvp && (nmp->nm_vers >= NFS_VER4) && (tnp->n_openflags & N_DELEG_MASK)) {
  nfs4_delegation_return(tnp, 0, vfs_context_thread(ctx), vfs_context_ucred(ctx));
 }

 error = nmp->nm_funcs->nf_rename_rpc(fdnp, fcnp->cn_nameptr, fcnp->cn_namelen,
   tdnp, tcnp->cn_nameptr, tcnp->cn_namelen, ctx);




 if (error == ENOENT)
  error = 0;

 if (tvp && (tvp != fvp) && !tnp->n_sillyrename) {
  nfs_node_lock_force(tnp);
  tvprecycle = (!error && !vnode_isinuse(tvp, 0) &&
      (nfs_getattrcache(tnp, &nvattr, 0) || (nvattr.nva_nlink == 1)));
  nfs_node_unlock(tnp);
  lck_mtx_lock(nfs_node_hash_mutex);
  if (tvprecycle && (tnp->n_hflag & NHHASHED)) {





   LIST_REMOVE(tnp, n_hash);
   tnp->n_hflag &= ~NHHASHED;
   FSDBG(266, 0, tnp, tnp->n_flag, 0xb1eb1e);
  }
  lck_mtx_unlock(nfs_node_hash_mutex);
 }


 nfs_name_cache_purge(fdnp, fnp, fcnp, ctx);
 if (tvp) {
  nfs_name_cache_purge(tdnp, tnp, tcnp, ctx);
  if (tvprecycle) {


   nfs_node_lock_force(tnp);
   tnp->n_flag &= (NMODIFIED);
   nfs_node_unlock(tnp);
   vnode_recycle(tvp);
  }
 }
 if (!error) {
  nfs_node_lock_force(tdnp);
  if (tdnp->n_flag & NNEGNCENTRIES) {
   tdnp->n_flag &= ~NNEGNCENTRIES;
   cache_purge_negatives(tdvp);
  }
  nfs_node_unlock(tdnp);
  nfs_node_lock_force(fnp);
  cache_enter(tdvp, fvp, tcnp);
  if (tdvp != fdvp) {
   if (fnp->n_parent && !vnode_get(fnp->n_parent)) {

    vnode_rele(fnp->n_parent);
    vnode_put(fnp->n_parent);
   }
   fnp->n_parent = tdvp;
   if (tdvp && !vnode_get(tdvp)) {

    vnode_ref(tdvp);
    vnode_put(tdvp);
   } else {
    fnp->n_parent = ((void*)0);
   }
  }
  nfs_node_unlock(fnp);
 }
out:

 nfs_getattr(fdnp, ((void*)0), ctx, NGA_CACHED);
 nfs_getattr(tdnp, ((void*)0), ctx, NGA_CACHED);
 if (locked) {

  lck_mtx_lock(nfs_node_hash_mutex);
  tnp->n_hflag &= ~NHLOCKED;
  if (tnp->n_hflag & NHLOCKWANT) {
   tnp->n_hflag &= ~NHLOCKWANT;
   wakeup(tnp);
  }
  lck_mtx_unlock(nfs_node_hash_mutex);
 }
 nfs_node_clear_busy4(fdnp, fnp, tdnp, tnp);
 return (error);
}
