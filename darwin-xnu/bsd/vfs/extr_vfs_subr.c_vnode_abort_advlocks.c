
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_4__ {int v_flag; } ;


 int VLOCKLOCAL ;
 int lf_abort_advlocks (TYPE_1__*) ;

__attribute__((used)) static void
vnode_abort_advlocks(vnode_t vp)
{
 if (vp->v_flag & VLOCKLOCAL)
  lf_abort_advlocks(vp);
}
