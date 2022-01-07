
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vfs_attr {int f_create_time; } ;
typedef int mount_t ;


 scalar_t__ VFSATTR_IS_ACTIVE (struct vfs_attr*,int ) ;
 scalar_t__ VFSATTR_IS_SUPPORTED (struct vfs_attr*,int ) ;
 int VFSATTR_RETURN (struct vfs_attr*,int ,int ) ;
 int VFS_GETATTR (int ,struct vfs_attr*,int ) ;
 int f_create_time ;
 int f_modify_time ;

int
vfs_getattr(mount_t mp, struct vfs_attr *vfa, vfs_context_t ctx)
{
 int error;

 if ((error = VFS_GETATTR(mp, vfa, ctx)) != 0)
  return(error);




  if (VFSATTR_IS_SUPPORTED(vfa, f_create_time)) {
   if (VFSATTR_IS_ACTIVE(vfa, f_modify_time) && !VFSATTR_IS_SUPPORTED(vfa, f_modify_time))
    VFSATTR_RETURN(vfa, f_modify_time, vfa->f_create_time);
  }

 return(0);
}
