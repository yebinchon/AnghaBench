
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int u_long ;
struct socket {int dummy; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef int proc_t ;
typedef int caddr_t ;
struct TYPE_2__ {scalar_t__ fg_data; } ;


 int EBADF ;
 int soioctl (struct socket*,int ,int ,int ) ;
 int vfs_context_proc (int ) ;

int
soo_ioctl(struct fileproc *fp, u_long cmd, caddr_t data, vfs_context_t ctx)
{
 struct socket *so;
 proc_t procp = vfs_context_proc(ctx);

 if ((so = (struct socket *)fp->f_fglob->fg_data) == ((void*)0)) {

  return (EBADF);
 }

 return (soioctl(so, cmd, data, procp));
}
