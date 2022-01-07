
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int user_addr_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int dummy; } ;
struct filedesc {int fd_cmask; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int ACCESSPERMS ;
 int ALLPERMS ;
 int AUDITVNPATH1 ;
 int FOLLOW ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int,int,int ,int ) ;
 int OP_OPEN ;
 int S_ISTXT ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,int) ;
 int fileproc_alloc_init ;
 int open1at (int ,struct nameidata*,int,struct vnode_attr*,int ,int *,int*,int) ;
 int va_mode ;
 TYPE_1__* vfs_context_proc (int ) ;

__attribute__((used)) static int
openat_internal(vfs_context_t ctx, user_addr_t path, int flags, int mode,
    int fd, enum uio_seg segflg, int *retval)
{
 struct filedesc *fdp = (vfs_context_proc(ctx))->p_fd;
 struct vnode_attr va;
 struct nameidata nd;
 int cmode;

 VATTR_INIT(&va);

 cmode = ((mode &~ fdp->fd_cmask) & ALLPERMS) & ~S_ISTXT;
 VATTR_SET(&va, va_mode, cmode & ACCESSPERMS);

 NDINIT(&nd, LOOKUP, OP_OPEN, FOLLOW | AUDITVNPATH1,
     segflg, path, ctx);

 return (open1at(ctx, &nd, flags, &va, fileproc_alloc_init, ((void*)0),
     retval, fd));
}
