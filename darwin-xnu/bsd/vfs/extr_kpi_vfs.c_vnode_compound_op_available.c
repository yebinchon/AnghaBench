
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int compound_vnop_id_t ;
struct TYPE_5__ {TYPE_1__* v_mount; } ;
struct TYPE_4__ {int mnt_compound_ops; } ;



int
vnode_compound_op_available(vnode_t vp, compound_vnop_id_t opid)
{
 return ((vp->v_mount->mnt_compound_ops & opid) != 0);
}
