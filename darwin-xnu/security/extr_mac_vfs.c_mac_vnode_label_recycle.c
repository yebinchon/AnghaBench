
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_3__ {int v_label; } ;


 int MAC_PERFORM (int ,int ) ;
 int vnode_label_recycle ;

void
mac_vnode_label_recycle(vnode_t vp)
{

 MAC_PERFORM(vnode_label_recycle, vp->v_label);
}
