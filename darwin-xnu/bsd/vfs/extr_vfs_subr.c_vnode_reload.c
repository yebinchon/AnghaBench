
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_5__ {int v_iocount; int v_lflag; scalar_t__ v_usecount; } ;


 int VL_MARKTERM ;
 int panic (char*,int) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

__attribute__((used)) static int
vnode_reload(vnode_t vp)
{
 vnode_lock_spin(vp);

 if ((vp->v_iocount > 1) || vp->v_usecount) {
  vnode_unlock(vp);
  return(0);
 }
 if (vp->v_iocount <= 0)
  panic("vnode_reload with no iocount %d", vp->v_iocount);


 vp->v_lflag |= VL_MARKTERM;
 vnode_unlock(vp);

 return (1);
}
