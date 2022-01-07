
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_rename_args {int dummy; } ;


 int ENOTSUP ;
 int nop_rename (struct vnop_rename_args*) ;

int
err_rename(struct vnop_rename_args *ap)
{
 (void)nop_rename(ap);
 return (ENOTSUP);
}
