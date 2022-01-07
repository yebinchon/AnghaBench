
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_context_t ;
struct fileglob {TYPE_1__* fg_ops; } ;
struct TYPE_2__ {int (* fo_close ) (struct fileglob*,int ) ;} ;


 int stub1 (struct fileglob*,int ) ;

int
fo_close(struct fileglob *fg, vfs_context_t ctx)
{
 return((*fg->fg_ops->fo_close)(fg, ctx));
}
