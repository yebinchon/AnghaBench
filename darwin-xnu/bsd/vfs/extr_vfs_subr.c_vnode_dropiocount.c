
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_5__ {int v_iocount; int v_lflag; } ;


 int VL_DRAIN ;
 int VL_SUSPENDED ;
 int panic (char*,TYPE_1__*) ;
 int record_vp (TYPE_1__*,int) ;
 int wakeup (int*) ;

__attribute__((used)) static void
vnode_dropiocount (vnode_t vp)
{
 if (vp->v_iocount < 1)
  panic("vnode_dropiocount(%p): v_iocount < 1", vp);

 vp->v_iocount--;



 if ((vp->v_lflag & (VL_DRAIN | VL_SUSPENDED)) && (vp->v_iocount <= 1))
  wakeup(&vp->v_iocount);
}
