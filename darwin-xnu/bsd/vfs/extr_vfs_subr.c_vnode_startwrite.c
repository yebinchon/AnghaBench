
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_3__ {int v_numoutput; } ;


 int OSAddAtomic (int,int *) ;

void
vnode_startwrite(vnode_t vp) {

        OSAddAtomic(1, &vp->v_numoutput);
}
