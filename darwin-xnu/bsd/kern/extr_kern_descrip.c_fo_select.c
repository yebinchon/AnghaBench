
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_context_t ;
struct fileproc {TYPE_1__* f_ops; } ;
struct TYPE_2__ {int (* fo_select ) (struct fileproc*,int,void*,int ) ;} ;


 int stub1 (struct fileproc*,int,void*,int ) ;

int
fo_select(struct fileproc *fp, int which, void *wql, vfs_context_t ctx)
{
 return((*fp->f_ops->fo_select)(fp, which, wql, ctx));
}
