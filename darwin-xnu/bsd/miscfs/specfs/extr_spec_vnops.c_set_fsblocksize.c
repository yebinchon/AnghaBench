
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct vnode {scalar_t__ v_type; int v_rdev; } ;
typedef int dev_t ;


 scalar_t__ VBLK ;
 int major (int ) ;
 scalar_t__ nblkdev ;
 int set_blocksize (struct vnode*,int ) ;
 int vnode_lock (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

void
set_fsblocksize(struct vnode *vp)
{

 if (vp->v_type == VBLK) {
  dev_t dev = (dev_t)vp->v_rdev;
  int maj = major(dev);

  if ((u_int)maj >= (u_int)nblkdev)
   return;

  vnode_lock(vp);
  set_blocksize(vp, dev);
  vnode_unlock(vp);
 }

}
