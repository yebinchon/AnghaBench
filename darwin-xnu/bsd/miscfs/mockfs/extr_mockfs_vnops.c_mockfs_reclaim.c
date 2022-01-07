
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct vnop_reclaim_args {int a_vp; } ;
typedef scalar_t__ mockfs_fsnode_t ;


 int mockfs_fsnode_drop_vnode (scalar_t__) ;
 scalar_t__ vnode_fsnode (int ) ;

int mockfs_reclaim(struct vnop_reclaim_args * ap)
{
 int rvalue;
 vnode_t vp;
 mockfs_fsnode_t fsnode;

 vp = ap->a_vp;
 fsnode = (mockfs_fsnode_t) vnode_fsnode(vp);
 rvalue = mockfs_fsnode_drop_vnode(fsnode);

 return rvalue;
}
