
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_lflag; scalar_t__ v_usecount; scalar_t__ v_iocount; } ;


 int VL_MARKTERM ;
 int vnode_lock_convert (struct vnode*) ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_reclaim_internal (struct vnode*,int,int ,int ) ;
 int vnode_unlock (struct vnode*) ;

int
vnode_recycle(struct vnode *vp)
{
 vnode_lock_spin(vp);

 if (vp->v_iocount || vp->v_usecount) {
  vp->v_lflag |= VL_MARKTERM;
  vnode_unlock(vp);
  return(0);
 }
 vnode_lock_convert(vp);
 vnode_reclaim_internal(vp, 1, 0, 0);

 vnode_unlock(vp);

 return (1);
}
