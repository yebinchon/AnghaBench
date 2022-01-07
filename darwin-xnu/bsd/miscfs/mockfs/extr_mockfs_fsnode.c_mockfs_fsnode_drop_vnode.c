
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vnode_t ;
typedef TYPE_2__* mockfs_mount_t ;
typedef TYPE_3__* mockfs_fsnode_t ;
struct TYPE_7__ {int * vp; TYPE_1__* mnt; } ;
struct TYPE_6__ {int mockfs_mnt_mtx; } ;
struct TYPE_5__ {scalar_t__ mnt_data; } ;


 int EINVAL ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int panic (char*) ;
 int vnode_clearfsnode (int *) ;

int mockfs_fsnode_drop_vnode(mockfs_fsnode_t fsnp)
{
 int rvalue;
 mockfs_mount_t mockfs_mnt;
 vnode_t vp;

 rvalue = 0;

 if (!fsnp) {
  rvalue = EINVAL;
  goto done;
 }

 mockfs_mnt = ((mockfs_mount_t) fsnp->mnt->mnt_data);
 lck_mtx_lock(&mockfs_mnt->mockfs_mnt_mtx);

 if (!(fsnp->vp)) {
  panic("mock_fsnode_drop_vnode: target fsnode does not have an associated vnode");
 }

 vp = fsnp->vp;
 fsnp->vp = ((void*)0);
 vnode_clearfsnode(vp);

 lck_mtx_unlock(&mockfs_mnt->mockfs_mnt_mtx);
done:
 return rvalue;
}
