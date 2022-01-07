
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int caddr_t ;
struct TYPE_5__ {scalar_t__ v_numoutput; int v_flag; } ;


 int OSAddAtomic (int,scalar_t__*) ;
 int VBWAIT ;
 int VTHROTTLED ;
 int panic (char*) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;
 int wakeup (int ) ;

void
vnode_writedone(vnode_t vp)
{
 if (vp) {
  int need_wakeup = 0;

         OSAddAtomic(-1, &vp->v_numoutput);

  vnode_lock_spin(vp);

  if (vp->v_numoutput < 0)
   panic("vnode_writedone: numoutput < 0");

  if ((vp->v_flag & VTHROTTLED)) {
   vp->v_flag &= ~VTHROTTLED;
   need_wakeup = 1;
  }
  if ((vp->v_flag & VBWAIT) && (vp->v_numoutput == 0)) {
   vp->v_flag &= ~VBWAIT;
   need_wakeup = 1;
  }
  vnode_unlock(vp);

  if (need_wakeup)
   wakeup((caddr_t)&vp->v_numoutput);
 }
}
