
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_lflag; int v_lock; int v_label; } ;


 int PVFS ;
 int VL_LABEL ;
 int VL_LABELED ;
 int VL_LABELWAIT ;
 int msleep (int *,int *,int ,char*,int ) ;

void
vnode_relabel(struct vnode *vp)
{


 while (vp->v_lflag & VL_LABEL) {
  vp->v_lflag |= VL_LABELWAIT;
  (void)msleep(&vp->v_label, &vp->v_lock, PVFS, "vnode_relabel", 0);
 }


 vp->v_lflag &= ~VL_LABELED;

 return;
}
