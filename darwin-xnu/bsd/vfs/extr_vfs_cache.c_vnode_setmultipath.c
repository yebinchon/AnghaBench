
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_5__ {int v_flag; } ;


 int VISHARDLINK ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

void vnode_setmultipath(vnode_t vp)
{
 vnode_lock_spin(vp);
 vp->v_flag |= VISHARDLINK;

 vnode_unlock(vp);
}
