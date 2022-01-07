
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_context_t ;
struct uio {int dummy; } ;
struct fileproc {TYPE_1__* f_ops; } ;
struct TYPE_2__ {int (* fo_write ) (struct fileproc*,struct uio*,int,int ) ;} ;


 int stub1 (struct fileproc*,struct uio*,int,int ) ;

int
fo_write(struct fileproc *fp, struct uio *uio, int flags, vfs_context_t ctx)
{
 return((*fp->f_ops->fo_write)(fp, uio, flags, ctx));
}
