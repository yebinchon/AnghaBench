
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;


 int KERNEL_MOUNT_NOAUTH ;
 int MNT_DONTBROWSE ;
 int NULLVP ;
 int kernel_mount (char*,int ,int ,char*,int *,int ,int ,int ,int ) ;
 int printf (char*,int) ;
 int vfs_context_kernel () ;

int
devfs_kernel_mount(char * mntname)
{
 int error;
 vfs_context_t ctx = vfs_context_kernel();
 char fsname[] = "devfs";

 error = kernel_mount(fsname, NULLVP, NULLVP, mntname, ((void*)0), 0, MNT_DONTBROWSE, KERNEL_MOUNT_NOAUTH, ctx);
 if (error) {
  printf("devfs_kernel_mount: kernel_mount failed: %d\n", error);
  return (error);
 }

 return (0);
}
