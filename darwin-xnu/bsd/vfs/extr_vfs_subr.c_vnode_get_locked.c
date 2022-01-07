
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_iocount; int v_lflag; int v_lock; } ;


 int ENOENT ;
 int LCK_MTX_ASSERT_OWNED ;
 int VL_DEAD ;
 int VL_TERMINATE ;
 int lck_mtx_assert (int *,int ) ;
 int record_vp (struct vnode*,int) ;

int
vnode_get_locked(struct vnode *vp)
{



 if ((vp->v_iocount == 0) && (vp->v_lflag & (VL_TERMINATE | VL_DEAD))) {
  return(ENOENT);
 }
 vp->v_iocount++;



 return (0);
}
