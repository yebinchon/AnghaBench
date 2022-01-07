
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vnode_attr {int dummy; } ;
struct open_extended_args {scalar_t__ xsecurity; int mode; int flags; int path; int * gid; int * uid; } ;
struct nameidata {int dummy; } ;
struct filedesc {int fd_cmask; } ;
typedef TYPE_1__* proc_t ;
typedef TYPE_2__* kauth_filesec_t ;
typedef int int32_t ;
struct TYPE_7__ {int fsec_acl; } ;
struct TYPE_6__ {struct filedesc* p_fd; } ;


 int ALLPERMS ;
 int AUDITVNPATH1 ;
 int AUDIT_ARG (int ,int *,int *) ;
 int FOLLOW ;
 int * KAUTH_GID_NONE ;
 int * KAUTH_UID_NONE ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int,int ,int ,int ) ;
 int OP_OPEN ;
 int S_ISTXT ;
 int UIO_USERSPACE ;
 scalar_t__ USER_ADDR_NULL ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,int) ;
 int fileproc_alloc_init ;
 int kauth_copyinfilesec (scalar_t__,TYPE_2__**) ;
 int kauth_filesec_free (TYPE_2__*) ;
 int open1 (int ,struct nameidata*,int ,struct vnode_attr*,int ,int *,int *) ;
 int owner ;
 int va_acl ;
 int va_gid ;
 int va_mode ;
 int va_uid ;
 int vfs_context_current () ;

int
open_extended(proc_t p, struct open_extended_args *uap, int32_t *retval)
{
 struct filedesc *fdp = p->p_fd;
 int ciferror;
 kauth_filesec_t xsecdst;
 struct vnode_attr va;
 struct nameidata nd;
 int cmode;

 AUDIT_ARG(owner, uap->uid, uap->gid);

 xsecdst = ((void*)0);
 if ((uap->xsecurity != USER_ADDR_NULL) &&
     ((ciferror = kauth_copyinfilesec(uap->xsecurity, &xsecdst)) != 0))
  return ciferror;

 VATTR_INIT(&va);
 cmode = ((uap->mode &~ fdp->fd_cmask) & ALLPERMS) & ~S_ISTXT;
 VATTR_SET(&va, va_mode, cmode);
 if (uap->uid != KAUTH_UID_NONE)
  VATTR_SET(&va, va_uid, uap->uid);
 if (uap->gid != KAUTH_GID_NONE)
  VATTR_SET(&va, va_gid, uap->gid);
 if (xsecdst != ((void*)0))
  VATTR_SET(&va, va_acl, &xsecdst->fsec_acl);

 NDINIT(&nd, LOOKUP, OP_OPEN, FOLLOW | AUDITVNPATH1, UIO_USERSPACE,
        uap->path, vfs_context_current());

 ciferror = open1(vfs_context_current(), &nd, uap->flags, &va,
    fileproc_alloc_init, ((void*)0), retval);
 if (xsecdst != ((void*)0))
  kauth_filesec_free(xsecdst);

 return ciferror;
}
