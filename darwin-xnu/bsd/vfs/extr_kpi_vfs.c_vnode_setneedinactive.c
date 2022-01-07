
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_6__ {int v_lflag; } ;


 int VL_NEEDINACTIVE ;
 int cache_purge (TYPE_1__*) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

void
vnode_setneedinactive(vnode_t vp)
{
        cache_purge(vp);

        vnode_lock_spin(vp);
 vp->v_lflag |= VL_NEEDINACTIVE;
 vnode_unlock(vp);
}
