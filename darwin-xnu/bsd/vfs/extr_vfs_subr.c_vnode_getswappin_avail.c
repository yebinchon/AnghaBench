
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int int64_t ;
struct TYPE_6__ {int mnt_ioflags; int mnt_max_swappin_available; } ;
struct TYPE_5__ {TYPE_3__* v_mount; } ;


 int MNT_IOFLAGS_SWAPPIN_SUPPORTED ;
 int mount_lock (TYPE_3__*) ;
 int mount_unlock (TYPE_3__*) ;

int64_t
vnode_getswappin_avail(vnode_t vp)
{
 int64_t max_swappin_avail = 0;

 mount_lock(vp->v_mount);
 if (vp->v_mount->mnt_ioflags & MNT_IOFLAGS_SWAPPIN_SUPPORTED)
  max_swappin_avail = vp->v_mount->mnt_max_swappin_available;
 mount_unlock(vp->v_mount);

 return (max_swappin_avail);
}
