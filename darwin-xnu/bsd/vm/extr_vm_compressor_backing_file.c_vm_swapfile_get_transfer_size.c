
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* vnode_t ;
typedef int uint64_t ;
struct TYPE_7__ {TYPE_2__* v_mount; } ;
struct TYPE_5__ {scalar_t__ f_iosize; } ;
struct TYPE_6__ {TYPE_1__ mnt_vfsstat; } ;



uint64_t
vm_swapfile_get_transfer_size(vnode_t vp)
{
 return((uint64_t)vp->v_mount->mnt_vfsstat.f_iosize);
}
