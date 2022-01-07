
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnop_readdir_args {int a_flags; struct uio* a_uio; } ;
struct uio {int uio_offset; } ;
struct proc {TYPE_1__* p_fd; } ;
struct dirent {int d_reclen; scalar_t__ d_fileno; int d_type; int d_name; int d_namlen; } ;
typedef int caddr_t ;
struct TYPE_2__ {int fd_nfiles; } ;


 int DT_UNKNOWN ;
 int EINVAL ;
 scalar_t__ FD_STDIN ;
 int UF_RESERVED ;
 int UIO_MX ;
 int VNODE_READDIR_EXTENDED ;
 int VNODE_READDIR_REQSEEKOFF ;
 int bzero (int ,int) ;
 struct proc* current_proc () ;
 int ** fdfile (struct proc*,int) ;
 int* fdflags (struct proc*,int) ;
 int snprintf (int ,int,char*,int) ;
 int uio_resid (struct uio*) ;
 int uiomove (int ,int,struct uio*) ;

int
devfs_devfd_readdir(struct vnop_readdir_args *ap)
{
 struct uio *uio = ap->a_uio;
 struct proc *p = current_proc();
 int i, error;





 if (ap->a_flags & (VNODE_READDIR_EXTENDED | VNODE_READDIR_REQSEEKOFF))
  return (EINVAL);




 if (uio_resid(uio) < UIO_MX)
  return (EINVAL);

 i = uio->uio_offset / UIO_MX;
 error = 0;
 while (uio_resid(uio) >= UIO_MX) {
  if (i >= p->p_fd->fd_nfiles)
   break;

  if (*fdfile(p, i) != ((void*)0) && !(*fdflags(p, i) & UF_RESERVED)) {
   struct dirent d;
   struct dirent *dp = &d;

   bzero((caddr_t) dp, UIO_MX);

   dp->d_namlen = snprintf(dp->d_name, sizeof(dp->d_name),
      "%d", i);
   dp->d_reclen = UIO_MX;
   dp->d_type = DT_UNKNOWN;
   dp->d_fileno = i + FD_STDIN;



   error = uiomove((caddr_t) dp, UIO_MX, uio);
   if (error)
    break;
  }
  i++;
 }

 uio->uio_offset = i * UIO_MX;
 return (error);
}
