
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_5__ {int v_flag; } ;


 int VNOCACHE_DATA ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

void
vnode_clearnocache(vnode_t vp)
{
 vnode_lock_spin(vp);
 vp->v_flag &= ~VNOCACHE_DATA;
 vnode_unlock(vp);
}
