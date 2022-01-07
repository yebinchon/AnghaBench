
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int vfs_context_t ;
typedef int uint64_t ;
struct TYPE_8__ {TYPE_1__* v_mount; } ;
struct TYPE_7__ {int mnt_kern_flag; } ;


 int FREAD ;
 int FWRITE ;
 int MNTK_NOSWAP ;
 int O_CREAT ;
 int O_TRUNC ;
 int S_IRUSR ;
 int S_IWUSR ;
 int printf (char*,int) ;
 int vfs_context_kernel () ;
 int vm_swapfile_close (int ,TYPE_2__*) ;
 int vnode_open (char const*,int,int,int ,TYPE_2__**,int ) ;
 int vnode_put (TYPE_2__*) ;

void
vm_swapfile_open(const char *path, vnode_t *vp)
{
 int error = 0;
 vfs_context_t ctx = vfs_context_kernel();

 if ((error = vnode_open(path, (O_CREAT | O_TRUNC | FREAD | FWRITE), S_IRUSR | S_IWUSR, 0, vp, ctx))) {
  printf("Failed to open swap file %d\n", error);
  *vp = ((void*)0);
  return;
 }






 if ((*vp)->v_mount->mnt_kern_flag & MNTK_NOSWAP) {
  vnode_put(*vp);
  vm_swapfile_close((uint64_t)path, *vp);
  *vp = ((void*)0);
  return;
 }

 vnode_put(*vp);
}
