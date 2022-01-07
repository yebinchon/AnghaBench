
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;


 int vnode_authattr_new_internal (int ,struct vnode_attr*,int,int *,int ) ;

int
vnode_authattr_new(vnode_t dvp, struct vnode_attr *vap, int noauth, vfs_context_t ctx)
{
 return vnode_authattr_new_internal(dvp, vap, noauth, ((void*)0), ctx);
}
