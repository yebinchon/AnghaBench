
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_5__ {int v_lflag; } ;


 int VL_DEAD ;
 int VL_TERMINATE ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

int
vnode_isrecycled(vnode_t vp)
{
 int ret;

 vnode_lock_spin(vp);
 ret = (vp->v_lflag & (VL_TERMINATE|VL_DEAD))? 1 : 0;
 vnode_unlock(vp);
 return(ret);
}
