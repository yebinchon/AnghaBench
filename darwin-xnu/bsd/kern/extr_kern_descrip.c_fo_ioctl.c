
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int u_long ;
struct fileproc {TYPE_1__* f_ops; } ;
typedef int caddr_t ;
struct TYPE_2__ {int (* fo_ioctl ) (struct fileproc*,int ,int ,int ) ;} ;


 int proc_fdlock (int ) ;
 int proc_fdunlock (int ) ;
 int stub1 (struct fileproc*,int ,int ,int ) ;
 int vfs_context_proc (int ) ;

int
fo_ioctl(struct fileproc *fp, u_long com, caddr_t data, vfs_context_t ctx)
{
 int error;

 proc_fdunlock(vfs_context_proc(ctx));
 error = (*fp->f_ops->fo_ioctl)(fp, com, data, ctx);
 proc_fdlock(vfs_context_proc(ctx));
 return(error);
}
