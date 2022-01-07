
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int dummy; } ;
struct guarded_open_dprotected_np_args {int flags; int guardflags; int mode; int dpclass; int dpflags; int path; int guard; } ;
struct gfp_crarg {int gca_attrs; scalar_t__ gca_guard; } ;
struct filedesc {int fd_cmask; } ;
typedef TYPE_1__* proc_t ;
typedef int int32_t ;
struct TYPE_3__ {struct filedesc* p_fd; } ;


 int ACCESSPERMS ;
 int ALLPERMS ;
 int AUDITVNPATH1 ;
 int EINVAL ;
 int FOLLOW ;
 int GUARD_ALL ;
 int GUARD_REQUIRED ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int,int ,int ,int ) ;
 int OP_OPEN ;
 int O_CLOEXEC ;
 int O_CLOFORK ;
 int O_CREAT ;
 int O_DP_GETRAWENCRYPTED ;
 int O_DP_GETRAWUNENCRYPTED ;
 int O_RDWR ;
 int O_WRONLY ;
 int S_ISTXT ;
 int UIO_USERSPACE ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,int) ;
 int VA_DP_RAWENCRYPTED ;
 int VA_DP_RAWUNENCRYPTED ;
 int copyin (int ,scalar_t__*,int) ;
 int guarded_fileproc_alloc_init ;
 int open1 (int ,struct nameidata*,int,struct vnode_attr*,int ,struct gfp_crarg*,int *) ;
 int va_dataprotect_class ;
 int va_dataprotect_flags ;
 int va_mode ;
 int vfs_context_current () ;

int
guarded_open_dprotected_np(proc_t p, struct guarded_open_dprotected_np_args *uap, int32_t *retval)
{
 if ((uap->flags & O_CLOEXEC) == 0)
  return (EINVAL);

 if (((uap->guardflags & GUARD_REQUIRED) != GUARD_REQUIRED) ||
     ((uap->guardflags & ~GUARD_ALL) != 0))
  return (EINVAL);

 int error;
 struct gfp_crarg crarg = {
  .gca_attrs = uap->guardflags
 };

 if ((error = copyin(uap->guard,
     &(crarg.gca_guard), sizeof (crarg.gca_guard))) != 0)
  return (error);




 if (crarg.gca_guard == 0)
  return (EINVAL);

 struct filedesc *fdp = p->p_fd;
 struct vnode_attr va;
 struct nameidata nd;
 vfs_context_t ctx = vfs_context_current();
 int cmode;

 VATTR_INIT(&va);
 cmode = ((uap->mode & ~fdp->fd_cmask) & ALLPERMS) & ~S_ISTXT;
 VATTR_SET(&va, va_mode, cmode & ACCESSPERMS);

 NDINIT(&nd, LOOKUP, OP_OPEN, FOLLOW | AUDITVNPATH1, UIO_USERSPACE,
        uap->path, ctx);







 if (uap->flags & O_CREAT) {
  VATTR_SET(&va, va_dataprotect_class, uap->dpclass);
 }

 if (uap->dpflags & (O_DP_GETRAWENCRYPTED|O_DP_GETRAWUNENCRYPTED)) {
  if ( uap->flags & (O_RDWR | O_WRONLY)) {

   return EINVAL;
  }
  if (uap->dpflags & O_DP_GETRAWENCRYPTED) {
      VATTR_SET(&va, va_dataprotect_flags, VA_DP_RAWENCRYPTED);
  }
  if (uap->dpflags & O_DP_GETRAWUNENCRYPTED) {
      VATTR_SET(&va, va_dataprotect_flags, VA_DP_RAWUNENCRYPTED);
  }
 }

 return (open1(ctx, &nd, uap->flags | O_CLOFORK, &va,
     guarded_fileproc_alloc_init, &crarg, retval));
}
