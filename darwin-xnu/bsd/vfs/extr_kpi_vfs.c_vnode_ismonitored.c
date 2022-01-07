
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct TYPE_4__ {int * slh_first; } ;
struct TYPE_5__ {TYPE_1__ v_knotes; } ;



int
vnode_ismonitored(vnode_t vp) {
 return (vp->v_knotes.slh_first != ((void*)0));
}
