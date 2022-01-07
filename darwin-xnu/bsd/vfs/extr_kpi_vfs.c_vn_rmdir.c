
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int ni_cnd; } ;


 scalar_t__ NULLVP ;
 int VNOP_COMPOUND_RMDIR (scalar_t__,scalar_t__*,struct nameidata*,struct vnode_attr*,int ) ;
 int VNOP_RMDIR (scalar_t__,scalar_t__,int *,int ) ;
 int panic (char*) ;
 scalar_t__ vnode_compound_rmdir_available (scalar_t__) ;

int
vn_rmdir(vnode_t dvp, vnode_t *vpp, struct nameidata *ndp, struct vnode_attr *vap, vfs_context_t ctx)
{
 if (vnode_compound_rmdir_available(dvp)) {
  return VNOP_COMPOUND_RMDIR(dvp, vpp, ndp, vap, ctx);
 } else {
  if (*vpp == NULLVP) {
   panic("NULL vp, but not a compound VNOP?");
  }
  if (vap != ((void*)0)) {
   panic("Non-NULL vap, but not a compound VNOP?");
  }
  return VNOP_RMDIR(dvp, *vpp, &ndp->ni_cnd, ctx);
 }
}
