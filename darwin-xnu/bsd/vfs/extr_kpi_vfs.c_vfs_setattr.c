
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vfs_attr {int dummy; } ;
typedef int mount_t ;


 int EROFS ;
 int VFS_SETATTR (int ,struct vfs_attr*,int ) ;
 scalar_t__ vfs_isrdonly (int ) ;

int
vfs_setattr(mount_t mp, struct vfs_attr *vfa, vfs_context_t ctx)
{
 int error;

 if (vfs_isrdonly(mp))
  return EROFS;

 error = VFS_SETATTR(mp, vfa, ctx);






 return error;
}
