
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_symlink_args {int dummy; } ;


 int ENOTSUP ;
 int nop_symlink (struct vnop_symlink_args*) ;

int
err_symlink(struct vnop_symlink_args *ap)
{
 (void)nop_symlink(ap);
 return (ENOTSUP);
}
