
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_6__ {int mnt_kern_flag; } ;
struct TYPE_5__ {TYPE_3__* v_mount; } ;


 int MNTK_SWAP_MOUNT ;
 int mount_lock (TYPE_3__*) ;
 int mount_unlock (TYPE_3__*) ;

void
vnode_setswapmount(vnode_t vp)
{
 mount_lock(vp->v_mount);
 vp->v_mount->mnt_kern_flag |= MNTK_SWAP_MOUNT;
 mount_unlock(vp->v_mount);
}
