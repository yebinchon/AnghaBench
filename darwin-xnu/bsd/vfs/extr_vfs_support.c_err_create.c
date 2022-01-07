
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_create_args {int dummy; } ;


 int ENOTSUP ;
 int nop_create (struct vnop_create_args*) ;

int
err_create(struct vnop_create_args *ap)
{
 (void)nop_create(ap);
 return (ENOTSUP);
}
