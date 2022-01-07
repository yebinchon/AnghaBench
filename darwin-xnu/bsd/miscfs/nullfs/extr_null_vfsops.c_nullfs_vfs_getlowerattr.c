
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vfs_attr {int dummy; } ;
typedef int mount_t ;


 int VFSATTR_INIT (struct vfs_attr*) ;
 int VFSATTR_WANTED (struct vfs_attr*,int ) ;
 int f_bavail ;
 int f_bfree ;
 int f_blocks ;
 int f_bsize ;
 int f_bused ;
 int f_capabilities ;
 int f_ffree ;
 int f_files ;
 int f_iosize ;
 int memset (struct vfs_attr*,int ,int) ;
 int vfs_getattr (int ,struct vfs_attr*,int ) ;

__attribute__((used)) static int
nullfs_vfs_getlowerattr(mount_t mp, struct vfs_attr * vfap, vfs_context_t ctx)
{
 memset(vfap, 0, sizeof(*vfap));
 VFSATTR_INIT(vfap);
 VFSATTR_WANTED(vfap, f_bsize);
 VFSATTR_WANTED(vfap, f_iosize);
 VFSATTR_WANTED(vfap, f_blocks);
 VFSATTR_WANTED(vfap, f_bfree);
 VFSATTR_WANTED(vfap, f_bavail);
 VFSATTR_WANTED(vfap, f_bused);
 VFSATTR_WANTED(vfap, f_files);
 VFSATTR_WANTED(vfap, f_ffree);
 VFSATTR_WANTED(vfap, f_capabilities);

 return vfs_getattr(mp, vfap, ctx);
}
