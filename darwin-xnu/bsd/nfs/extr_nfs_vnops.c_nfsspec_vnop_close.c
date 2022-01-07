
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vnode_t ;
struct vnop_close_args {int a_context; int a_vp; } ;
struct vnode_attr {int va_modify_time; int va_access_time; } ;
typedef TYPE_1__* nfsnode_t ;
typedef int mount_t ;
struct TYPE_5__ {int n_flag; int n_mtim; int n_atim; } ;


 int NACC ;
 int NCHG ;
 int NUPD ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET_ACTIVE (struct vnode_attr*,int ) ;
 int VOCALL (int ,int ,struct vnop_close_args*) ;
 int VOFFSET (int ) ;
 TYPE_1__* VTONFS (int ) ;
 int nfs_node_lock (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int spec_vnodeop_p ;
 int va_access_time ;
 int va_modify_time ;
 int vfs_isrdonly (int ) ;
 int vnode_isinuse (int ,int ) ;
 int vnode_mount (int ) ;
 int vnode_setattr (int ,struct vnode_attr*,int ) ;
 int vnop_close ;

int
nfsspec_vnop_close(
 struct vnop_close_args *ap)





{
 vnode_t vp = ap->a_vp;
 nfsnode_t np = VTONFS(vp);
 struct vnode_attr vattr;
 mount_t mp;
 int error;

 if ((error = nfs_node_lock(np)))
  return (error);
 if (np->n_flag & (NACC | NUPD)) {
  np->n_flag |= NCHG;
  if (!vnode_isinuse(vp, 0) && (mp = vnode_mount(vp)) && !vfs_isrdonly(mp)) {
   VATTR_INIT(&vattr);
   if (np->n_flag & NACC) {
    vattr.va_access_time = np->n_atim;
    VATTR_SET_ACTIVE(&vattr, va_access_time);
   }
   if (np->n_flag & NUPD) {
    vattr.va_modify_time = np->n_mtim;
    VATTR_SET_ACTIVE(&vattr, va_modify_time);
   }
   nfs_node_unlock(np);
   vnode_setattr(vp, &vattr, ap->a_context);
  } else {
   nfs_node_unlock(np);
  }
 } else {
  nfs_node_unlock(np);
 }
 return (VOCALL(spec_vnodeop_p, VOFFSET(vnop_close), ap));
}
