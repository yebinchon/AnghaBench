
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_3__ {int * v_label; } ;


 scalar_t__ mac_label_vnodes ;

int
mac_vnode_label_init_needed(vnode_t vp)
{
 return (mac_label_vnodes != 0 && vp->v_label == ((void*)0));
}
