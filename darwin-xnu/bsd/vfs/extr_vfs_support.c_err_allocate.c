
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_allocate_args {int dummy; } ;


 int ENOTSUP ;
 int nop_allocate (struct vnop_allocate_args*) ;

int
err_allocate(struct vnop_allocate_args *ap)
{
 (void)nop_allocate(ap);
 return (ENOTSUP);
}
