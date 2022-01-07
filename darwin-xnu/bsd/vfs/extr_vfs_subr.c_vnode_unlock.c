
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_3__ {int v_lock; } ;


 int lck_mtx_unlock (int *) ;

void
vnode_unlock(vnode_t vp)
{
 lck_mtx_unlock(&vp->v_lock);
}
