
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct TYPE_11__ {int v_iocount; scalar_t__ v_usecount; int v_lflag; int v_lock; } ;


 int LCK_MTX_ASSERT_OWNED ;
 int VL_DEAD ;
 int VL_MARKTERM ;
 int VL_NEEDINACTIVE ;
 int VL_TERMINATE ;
 int VNOP_INACTIVE (TYPE_1__*,int ) ;
 int lck_mtx_assert (int *,int ) ;
 int panic (char*,TYPE_1__*) ;
 int vfs_context_current () ;
 int vnode_dropiocount (TYPE_1__*) ;
 int vnode_list_add (TYPE_1__*) ;
 int vnode_lock_convert (TYPE_1__*) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_reclaim_internal (TYPE_1__*,int,int,int ) ;
 int vnode_unlock (TYPE_1__*) ;

int
vnode_put_locked(vnode_t vp)
{
 vfs_context_t ctx = vfs_context_current();




retry:
 if (vp->v_iocount < 1)
  panic("vnode_put(%p): iocount < 1", vp);

 if ((vp->v_usecount > 0) || (vp->v_iocount > 1)) {
  vnode_dropiocount(vp);
  return(0);
 }
 if ((vp->v_lflag & (VL_DEAD | VL_NEEDINACTIVE)) == VL_NEEDINACTIVE) {

         vp->v_lflag &= ~VL_NEEDINACTIVE;
         vnode_unlock(vp);

  VNOP_INACTIVE(vp, ctx);

  vnode_lock_spin(vp);
  goto retry;
 }
        vp->v_lflag &= ~VL_NEEDINACTIVE;

 if ((vp->v_lflag & (VL_MARKTERM | VL_TERMINATE | VL_DEAD)) == VL_MARKTERM) {
         vnode_lock_convert(vp);
         vnode_reclaim_internal(vp, 1, 1, 0);
 }
 vnode_dropiocount(vp);
 vnode_list_add(vp);

 return(0);
}
