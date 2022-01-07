
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int uint64_t ;


 scalar_t__ vfs_devblocksize (int ) ;
 int vnode_mount (int ) ;

uint64_t
vm_swapfile_get_blksize(vnode_t vp)
{
 return ((uint64_t)vfs_devblocksize(vnode_mount(vp)));
}
