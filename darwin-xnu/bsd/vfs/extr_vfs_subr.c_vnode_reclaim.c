
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int vnode_reclaim_internal (struct vnode*,int ,int ,int ) ;

void
vnode_reclaim(struct vnode * vp)
{
 vnode_reclaim_internal(vp, 0, 0, 0);
}
