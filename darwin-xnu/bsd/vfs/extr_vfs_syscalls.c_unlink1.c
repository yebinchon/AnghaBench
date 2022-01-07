
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int user_addr_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_FDCWD ;
 int unlinkat_internal (int ,int ,int ,int ,int,int) ;

int
unlink1(vfs_context_t ctx, vnode_t start_dvp, user_addr_t path_arg,
    enum uio_seg segflg, int unlink_flags)
{
 return (unlinkat_internal(ctx, AT_FDCWD, start_dvp, path_arg, segflg,
     unlink_flags));
}
