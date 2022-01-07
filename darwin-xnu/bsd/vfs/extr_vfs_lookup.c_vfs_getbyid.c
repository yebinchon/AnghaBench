
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int * mount_t ;
typedef int ino64_t ;
struct TYPE_3__ {int * val; } ;
typedef TYPE_1__ fsid_t ;


 int EINVAL ;
 int VFS_ROOT (int *,int *,int ) ;
 int VFS_VGET (int *,int,int *,int ) ;
 int * mount_lookupby_volfsid (int ,int) ;
 int vfs_unbusy (int *) ;

int
vfs_getbyid(fsid_t *fsid, ino64_t ino, vnode_t *vpp, vfs_context_t ctx)
{
 mount_t mp;
 int error;

 mp = mount_lookupby_volfsid(fsid->val[0], 1);
 if (mp == ((void*)0)) {
  return EINVAL;
 }


 if (ino == 2) {
  error = VFS_ROOT(mp, vpp, ctx);
 } else {
  error = VFS_VGET(mp, ino, vpp, ctx);
 }

 vfs_unbusy(mp);
 return error;
}
