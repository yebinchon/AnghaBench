
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int errno_t ;
struct TYPE_5__ {int v_lflag; scalar_t__ v_owner; int v_iocount; } ;


 int VL_SUSPENDED ;
 scalar_t__ current_thread () ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;
 int wakeup (int *) ;

errno_t
vnode_resume(vnode_t vp)
{
 if ((vp->v_lflag & VL_SUSPENDED) && vp->v_owner == current_thread()) {

  vnode_lock_spin(vp);
         vp->v_lflag &= ~VL_SUSPENDED;
  vp->v_owner = ((void*)0);
  vnode_unlock(vp);

  wakeup(&vp->v_iocount);
 }
 return(0);
}
