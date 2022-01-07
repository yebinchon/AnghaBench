
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_3__ {int v_label; } ;


 int mac_vnode_label_alloc () ;

void
mac_vnode_label_init(vnode_t vp)
{
 vp->v_label = mac_vnode_label_alloc();
}
