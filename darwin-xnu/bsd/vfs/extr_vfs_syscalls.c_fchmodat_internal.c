
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int user_addr_t ;
struct vnode_attr {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int ALLPERMS ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,int) ;
 int chmodat (int ,int ,struct vnode_attr*,int,int,int) ;
 int va_mode ;

__attribute__((used)) static int
fchmodat_internal(vfs_context_t ctx, user_addr_t path, int mode, int fd,
    int flag, enum uio_seg segflg)
{
 struct vnode_attr va;

 VATTR_INIT(&va);
 VATTR_SET(&va, va_mode, mode & ALLPERMS);

 return (chmodat(ctx, path, &va, fd, flag, segflg));
}
