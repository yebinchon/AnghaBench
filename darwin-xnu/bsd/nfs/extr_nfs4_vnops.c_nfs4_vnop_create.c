
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vnode_t ;
typedef int vfs_context_t ;
struct vnop_create_args {int ** a_vpp; int * a_dvp; struct vnode_attr* a_vap; struct componentname* a_cnp; int a_context; } ;
struct vnode_attr {int va_vaflags; int va_mode; } ;
struct nfsmount {int dummy; } ;
struct nfs_open_owner {int dummy; } ;
struct nfs_open_file {int nof_flags; int nof_creator; int nof_stateid; } ;
struct componentname {int cn_namelen; int cn_nameptr; } ;
typedef scalar_t__ nfsnode_t ;


 int EACCES ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int * NFSTOV (scalar_t__) ;
 int NFS_OPEN_CREATE ;
 int NFS_OPEN_FILE_CREATE ;
 int NFS_OPEN_FILE_LOST ;
 int NFS_OPEN_FILE_POSIXLOCK ;
 int NFS_OPEN_FILE_REOPEN ;
 int NFS_OPEN_NOCREATE ;
 int NFS_OPEN_SHARE_ACCESS_BOTH ;
 int NFS_OPEN_SHARE_DENY_NONE ;
 int S_IWUSR ;
 int VATTR_INIT (struct vnode_attr*) ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;
 int VATTR_SET (struct vnode_attr*,int ,int) ;
 int VA_EXCLUSIVE ;
 scalar_t__ VREG ;
 scalar_t__ VTONFS (int *) ;
 struct nfsmount* VTONMP (int *) ;
 int current_thread () ;
 int nfs4_open_rpc (struct nfs_open_file*,int ,struct componentname*,struct vnode_attr*,int *,int **,int ,int,int) ;
 int nfs4_reopen (struct nfs_open_file*,int *) ;
 int nfs4_setattr_rpc (scalar_t__,struct vnode_attr*,int ) ;
 int nfs_avoid_needless_id_setting_on_create (scalar_t__,struct vnode_attr*,int ) ;
 int nfs_lookitup (scalar_t__,int ,int ,int ,scalar_t__*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 scalar_t__ nfs_mount_state_in_use_end (struct nfsmount*,int) ;
 int nfs_mount_state_in_use_start (struct nfsmount*,int *) ;
 int nfs_node_unlock (scalar_t__) ;
 int nfs_open_file_add_open (struct nfs_open_file*,int,int,int ) ;
 int nfs_open_file_clear_busy (struct nfs_open_file*) ;
 int nfs_open_file_destroy (struct nfs_open_file*) ;
 int nfs_open_file_find (int *,struct nfs_open_owner*,struct nfs_open_file**,int ,int ,int) ;
 int nfs_open_file_find_internal (scalar_t__,struct nfs_open_owner*,struct nfs_open_file**,int ,int ,int ) ;
 int nfs_open_file_set_busy (struct nfs_open_file*,int *) ;
 struct nfs_open_owner* nfs_open_owner_find (struct nfsmount*,int ,int) ;
 int nfs_open_owner_rele (struct nfs_open_owner*) ;
 int printf (char*,...) ;
 int va_mode ;
 int * vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;
 int vnode_put (int *) ;
 scalar_t__ vnode_vtype (int *) ;

int
nfs4_vnop_create(
 struct vnop_create_args *ap)







{
 vfs_context_t ctx = ap->a_context;
 struct componentname *cnp = ap->a_cnp;
 struct vnode_attr *vap = ap->a_vap;
 vnode_t dvp = ap->a_dvp;
 vnode_t *vpp = ap->a_vpp;
 struct nfsmount *nmp;
 nfsnode_t np;
 int error = 0, busyerror = 0, accessMode, denyMode;
 struct nfs_open_owner *noop = ((void*)0);
 struct nfs_open_file *newnofp = ((void*)0), *nofp = ((void*)0);

 nmp = VTONMP(dvp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);

 if (vap)
  nfs_avoid_needless_id_setting_on_create(VTONFS(dvp), vap, ctx);

 noop = nfs_open_owner_find(nmp, vfs_context_ucred(ctx), 1);
 if (!noop)
  return (ENOMEM);

restart:
 error = nfs_mount_state_in_use_start(nmp, vfs_context_thread(ctx));
 if (error) {
  nfs_open_owner_rele(noop);
  return (error);
 }


 error = nfs_open_file_find(((void*)0), noop, &newnofp, 0, 0, 1);
 if (!error && (newnofp->nof_flags & NFS_OPEN_FILE_LOST)) {
  printf("nfs_vnop_create: LOST\n");
  error = EIO;
 }
 if (!error && (newnofp->nof_flags & NFS_OPEN_FILE_REOPEN)) {

  nfs_mount_state_in_use_end(nmp, 0);
  error = nfs4_reopen(newnofp, vfs_context_thread(ctx));
  nfs_open_file_destroy(newnofp);
  newnofp = ((void*)0);
  if (!error)
   goto restart;
 }
 if (!error)
  error = nfs_open_file_set_busy(newnofp, vfs_context_thread(ctx));
 if (error) {
  if (newnofp)
   nfs_open_file_destroy(newnofp);
  newnofp = ((void*)0);
  goto out;
 }





 accessMode = NFS_OPEN_SHARE_ACCESS_BOTH;
 denyMode = NFS_OPEN_SHARE_DENY_NONE;


 error = nfs4_open_rpc(newnofp, ctx, cnp, vap, dvp, vpp, NFS_OPEN_CREATE, accessMode, denyMode);
 if ((error == EACCES) && vap && !(vap->va_vaflags & VA_EXCLUSIVE) &&
     VATTR_IS_ACTIVE(vap, va_mode) && !(vap->va_mode & S_IWUSR)) {
  struct vnode_attr vattr;


  int error2 = nfs_lookitup(VTONFS(dvp), cnp->cn_nameptr, cnp->cn_namelen, ctx, &np);
  if (!error2 && np) {
   nfs_node_unlock(np);
   *vpp = NFSTOV(np);
   if (vnode_vtype(NFSTOV(np)) == VREG) {
    VATTR_INIT(&vattr);
    VATTR_SET(&vattr, va_mode, (vap->va_mode | S_IWUSR));
    if (!nfs4_setattr_rpc(np, &vattr, ctx)) {
     error2 = nfs4_open_rpc(newnofp, ctx, cnp, ((void*)0), dvp, vpp, NFS_OPEN_NOCREATE, accessMode, denyMode);
     VATTR_INIT(&vattr);
     VATTR_SET(&vattr, va_mode, vap->va_mode);
     nfs4_setattr_rpc(np, &vattr, ctx);
     if (!error2)
      error = 0;
    }
   }
   if (error) {
    vnode_put(*vpp);
    *vpp = ((void*)0);
   }
  }
 }
 if (!error && !*vpp) {
  printf("nfs4_open_rpc returned without a node?\n");

  error = EIO;
 }
 if (error) {

  nfs_open_file_clear_busy(newnofp);
  nfs_open_file_destroy(newnofp);
  newnofp = ((void*)0);
  goto out;
 }

 np = VTONFS(*vpp);
 nfs_open_file_add_open(newnofp, accessMode, denyMode, 0);
 nofp = newnofp;
 error = nfs_open_file_find_internal(np, noop, &nofp, 0, 0, 0);
 if (error) {

  printf("nfs_open_file_find_internal failed! %d\n", error);
  goto out;
 } else if (nofp != newnofp) {







  busyerror = nfs_open_file_set_busy(nofp, ((void*)0));
  nfs_open_file_add_open(nofp, accessMode, denyMode, 0);
  nofp->nof_stateid = newnofp->nof_stateid;
  if (newnofp->nof_flags & NFS_OPEN_FILE_POSIXLOCK)
   nofp->nof_flags |= NFS_OPEN_FILE_POSIXLOCK;
  nfs_open_file_clear_busy(newnofp);
  nfs_open_file_destroy(newnofp);
 }
 newnofp = ((void*)0);

 nofp->nof_flags |= NFS_OPEN_FILE_CREATE;
 nofp->nof_creator = current_thread();
out:
 if (nofp && !busyerror)
  nfs_open_file_clear_busy(nofp);
 if (nfs_mount_state_in_use_end(nmp, error)) {
  nofp = newnofp = ((void*)0);
  busyerror = 0;
  goto restart;
 }
 if (noop)
  nfs_open_owner_rele(noop);
 return (error);
}
