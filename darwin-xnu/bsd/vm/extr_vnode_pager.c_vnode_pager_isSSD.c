
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int boolean_t ;
struct TYPE_3__ {int v_mount; } ;


 int disk_conditioner_mount_is_ssd (int ) ;

boolean_t
vnode_pager_isSSD(vnode_t vp)
{
 return disk_conditioner_mount_is_ssd(vp->v_mount);
}
