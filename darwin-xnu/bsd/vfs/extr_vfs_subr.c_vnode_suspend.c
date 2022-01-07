
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int errno_t ;
struct TYPE_5__ {int v_lflag; int * v_owner; } ;


 int EBUSY ;
 int VL_SUSPENDED ;
 int * current_thread () ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

errno_t
vnode_suspend(vnode_t vp)
{
 if (vp->v_lflag & VL_SUSPENDED) {
  return(EBUSY);
 }

 vnode_lock_spin(vp);






 if (vp->v_owner == ((void*)0)) {
  vp->v_lflag |= VL_SUSPENDED;
  vp->v_owner = current_thread();
 }
 vnode_unlock(vp);

 return(0);
}
