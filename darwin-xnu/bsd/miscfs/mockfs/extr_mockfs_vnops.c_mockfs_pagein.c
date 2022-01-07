
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnop_pagein_args {int a_flags; int a_size; int a_f_offset; int a_pl_offset; int a_pl; TYPE_4__* a_vp; } ;
typedef TYPE_2__* mockfs_mount_t ;
typedef TYPE_3__* mockfs_fsnode_t ;
struct TYPE_8__ {scalar_t__ v_data; } ;
struct TYPE_7__ {int size; TYPE_1__* mnt; } ;
struct TYPE_6__ {scalar_t__ mockfs_memory_backed; } ;
struct TYPE_5__ {scalar_t__ mnt_data; } ;


 int cluster_pagein (TYPE_4__*,int ,int ,int ,int ,int ,int ) ;
 int panic (char*) ;

int mockfs_pagein(struct vnop_pagein_args * ap)
{
 mockfs_fsnode_t fsnode;
 mockfs_mount_t mockfs_mnt;




 fsnode = (mockfs_fsnode_t) ap->a_vp->v_data;
 mockfs_mnt = ((mockfs_mount_t) fsnode->mnt->mnt_data);





 if (mockfs_mnt->mockfs_memory_backed)
  panic("mockfs_pagein called for a memory-backed device");

 return cluster_pagein(ap->a_vp, ap->a_pl, ap->a_pl_offset, ap->a_f_offset, ap->a_size, fsnode->size, ap->a_flags);
}
