
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int caddr_t ;
struct TYPE_5__ {int v_flag; } ;


 int VISUNION ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;
 int wakeup (int ) ;

void
vn_clearunionwait(vnode_t vp, int locked)
{
 if (!locked)
  vnode_lock_spin(vp);
 if((vp->v_flag & VISUNION) == VISUNION) {
  vp->v_flag &= ~VISUNION;
  wakeup((caddr_t)&vp->v_flag);
 }
 if (!locked)
  vnode_unlock(vp);
}
