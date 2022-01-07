
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_copyfile_args {int dummy; } ;


 int ENOTSUP ;
 int nop_copyfile (struct vnop_copyfile_args*) ;

int
err_copyfile(struct vnop_copyfile_args *ap)
{
 (void)nop_copyfile(ap);
 return (ENOTSUP);
}
