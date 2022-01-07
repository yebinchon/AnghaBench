
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int caddr_t ;
struct TYPE_5__ {int v_flag; int v_lock; } ;


 int VISUNION ;
 int msleep (int ,int *,int ,int ,int ) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

void
vn_checkunionwait(vnode_t vp)
{
 vnode_lock_spin(vp);
 while ((vp->v_flag & VISUNION) == VISUNION)
  msleep((caddr_t)&vp->v_flag, &vp->v_lock, 0, 0, 0);
 vnode_unlock(vp);
}
