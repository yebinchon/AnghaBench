
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int uint32_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int ni_cnd; } ;


 int NULLVP ;
 int O_CREAT ;
 int VNOP_COMPOUND_OPEN (int ,int *,struct nameidata*,int ,int,int*,struct vnode_attr*,int ) ;
 int VNOP_CREATE (int ,int *,int *,struct vnode_attr*,int ) ;
 int VN_CREATE_DOOPEN ;
 scalar_t__ vnode_compound_open_available (int ) ;

__attribute__((used)) static int
vn_create_reg(vnode_t dvp, vnode_t *vpp, struct nameidata *ndp, struct vnode_attr *vap, uint32_t flags, int fmode, uint32_t *statusp, vfs_context_t ctx)
{

 if (vnode_compound_open_available(dvp) && ((flags & VN_CREATE_DOOPEN) != 0)) {
  *vpp = NULLVP;
  return VNOP_COMPOUND_OPEN(dvp, vpp, ndp, O_CREAT, fmode, statusp, vap, ctx);
 } else {
  return VNOP_CREATE(dvp, vpp, &ndp->ni_cnd, vap, ctx);
 }
}
