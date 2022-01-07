
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_4__ {struct TYPE_4__* v_parent; } ;



vnode_t
vnode_parent(vnode_t vp)
{

 return(vp->v_parent);
}
