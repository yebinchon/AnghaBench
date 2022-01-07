
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int caddr_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {scalar_t__ v_usecount; scalar_t__ v_iocount; int v_lflag; int v_flag; int v_listflag; int v_dirtyblkhd; int v_cleanblkhd; int v_lock; } ;


 int BUF_INVALIDATE_LOCKED ;
 scalar_t__ FALSE ;
 scalar_t__ ISSET (int,int) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LIST_EMPTY (int *) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 scalar_t__ TRUE ;
 int VAGE ;
 int VLIST_DEAD ;
 int VLIST_RAGE ;
 int VL_DEAD ;
 int VL_TERMINATE ;
 scalar_t__ VONLIST (TYPE_1__*) ;
 int VRAGE ;
 int buf_invalidateblks (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ dead_vnode_wanted ;
 int deadvnodes ;
 int freevnodes ;
 int lck_mtx_assert (int *,int ) ;
 int microuptime (int *) ;
 int rage_tv ;
 int ragevnodes ;
 int record_vp (TYPE_1__*,int) ;
 int v_freelist ;
 int vnode_dead_list ;
 int vnode_dropiocount (TYPE_1__*) ;
 int vnode_free_list ;
 int vnode_list_lock () ;
 int vnode_list_unlock () ;
 int vnode_lock (TYPE_1__*) ;
 int vnode_rage_list ;
 int vnode_unlock (TYPE_1__*) ;
 int wakeup_one (int ) ;

__attribute__((used)) static void
vnode_list_add(vnode_t vp)
{
 boolean_t need_dead_wakeup = FALSE;





again:




 if (VONLIST(vp) || (vp->v_usecount != 0) || (vp->v_iocount != 0) || (vp->v_lflag & VL_TERMINATE))
  return;






 if (ISSET(vp->v_lflag, VL_DEAD)
  && (!LIST_EMPTY(&vp->v_cleanblkhd) || !LIST_EMPTY(&vp->v_dirtyblkhd))) {
  ++vp->v_iocount;



  vnode_unlock(vp);
  buf_invalidateblks(vp, BUF_INVALIDATE_LOCKED, 0, 0);
  vnode_lock(vp);
  vnode_dropiocount(vp);
  goto again;
 }

 vnode_list_lock();

 if ((vp->v_flag & VRAGE) && !(vp->v_lflag & VL_DEAD)) {



  if ((vp->v_flag & VAGE))
          TAILQ_INSERT_HEAD(&vnode_rage_list, vp, v_freelist);
  else
          TAILQ_INSERT_TAIL(&vnode_rage_list, vp, v_freelist);

  vp->v_listflag |= VLIST_RAGE;
  ragevnodes++;
  microuptime(&rage_tv);
 } else {




         if ( (vp->v_lflag & VL_DEAD)) {
          TAILQ_INSERT_HEAD(&vnode_dead_list, vp, v_freelist);
   vp->v_listflag |= VLIST_DEAD;
   deadvnodes++;

   if (dead_vnode_wanted) {
    dead_vnode_wanted--;
    need_dead_wakeup = TRUE;
   }

  } else if ( (vp->v_flag & VAGE) ) {
          TAILQ_INSERT_HEAD(&vnode_free_list, vp, v_freelist);
   vp->v_flag &= ~VAGE;
   freevnodes++;
  } else {
          TAILQ_INSERT_TAIL(&vnode_free_list, vp, v_freelist);
   freevnodes++;
  }
 }
 vnode_list_unlock();

 if (need_dead_wakeup == TRUE)
  wakeup_one((caddr_t)&dead_vnode_wanted);
}
