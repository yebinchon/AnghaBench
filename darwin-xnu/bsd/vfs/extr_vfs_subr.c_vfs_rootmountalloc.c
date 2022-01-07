
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfstable {int vfc_name; struct vfstable* vfc_next; } ;
typedef int mount_t ;
typedef int errno_t ;


 int ENODEV ;
 int ENOMEM ;
 int strncmp (int ,char const*,int) ;
 int vfs_rootmountalloc_internal (struct vfstable*,char const*) ;
 struct vfstable* vfsconf ;

errno_t
vfs_rootmountalloc(const char *fstypename, const char *devname, mount_t *mpp)
{
        struct vfstable *vfsp;

 for (vfsp = vfsconf; vfsp; vfsp = vfsp->vfc_next)
         if (!strncmp(vfsp->vfc_name, fstypename,
        sizeof(vfsp->vfc_name)))
          break;
        if (vfsp == ((void*)0))
         return (ENODEV);

 *mpp = vfs_rootmountalloc_internal(vfsp, devname);

 if (*mpp)
         return (0);

 return (ENOMEM);
}
