
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_5__ {int v_lflag; } ;


 int VNAMED_FSHASH ;
 int panic (char*) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

int
vnode_removefsref(vnode_t vp)
{
 vnode_lock_spin(vp);
 if ((vp->v_lflag & VNAMED_FSHASH) == 0)
  panic("remove_fsref: no named reference");
 vp->v_lflag &= ~VNAMED_FSHASH;
 vnode_unlock(vp);
 return(0);

}
