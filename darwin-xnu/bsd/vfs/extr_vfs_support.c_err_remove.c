
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_remove_args {int dummy; } ;


 int ENOTSUP ;
 int nop_remove (struct vnop_remove_args*) ;

int
err_remove(struct vnop_remove_args *ap)
{
 (void)nop_remove(ap);
 return (ENOTSUP);
}
