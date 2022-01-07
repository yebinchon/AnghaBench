
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;


 int VFS_VGET_SNAPDIR (int ,int *,int ) ;
 int vnode_mount (int ) ;

int
vnode_get_snapdir(vnode_t rvp, vnode_t *sdvpp, vfs_context_t ctx)
{
 return (VFS_VGET_SNAPDIR(vnode_mount(rvp), sdvpp, ctx));
}
