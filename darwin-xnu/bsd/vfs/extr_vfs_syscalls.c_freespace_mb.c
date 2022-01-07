
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int f_bsize; scalar_t__ f_bavail; } ;
struct TYPE_7__ {TYPE_1__ mnt_vfsstat; } ;
struct TYPE_6__ {TYPE_3__* v_mount; } ;


 int VFS_USER_EVENT ;
 int vfs_context_current () ;
 int vfs_update_vfsstat (TYPE_3__*,int ,int ) ;

uint32_t
freespace_mb(vnode_t vp)
{
 vfs_update_vfsstat(vp->v_mount, vfs_context_current(), VFS_USER_EVENT);
  return (((uint64_t)vp->v_mount->mnt_vfsstat.f_bavail *
          vp->v_mount->mnt_vfsstat.f_bsize) >> 20);
}
