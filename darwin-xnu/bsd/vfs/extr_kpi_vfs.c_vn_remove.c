
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int ni_cnd; } ;
typedef int int32_t ;


 int VNOP_COMPOUND_REMOVE (int ,int *,struct nameidata*,int ,struct vnode_attr*,int ) ;
 int VNOP_REMOVE (int ,int ,int *,int ,int ) ;
 scalar_t__ vnode_compound_remove_available (int ) ;

int
vn_remove(vnode_t dvp, vnode_t *vpp, struct nameidata *ndp, int32_t flags, struct vnode_attr *vap, vfs_context_t ctx)
{
 if (vnode_compound_remove_available(dvp)) {
  return VNOP_COMPOUND_REMOVE(dvp, vpp, ndp, flags, vap, ctx);
 } else {
  return VNOP_REMOVE(dvp, *vpp, &ndp->ni_cnd, flags, ctx);
 }
}
