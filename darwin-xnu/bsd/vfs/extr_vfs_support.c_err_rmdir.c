
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_rmdir_args {int dummy; } ;


 int ENOTSUP ;
 int nop_rmdir (struct vnop_rmdir_args*) ;

int
err_rmdir(struct vnop_rmdir_args *ap)
{
 (void)nop_rmdir(ap);
 return (ENOTSUP);
}
