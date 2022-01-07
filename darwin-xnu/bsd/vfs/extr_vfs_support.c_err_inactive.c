
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_inactive_args {int dummy; } ;


 int ENOTSUP ;
 int nop_inactive (struct vnop_inactive_args*) ;

int
err_inactive(struct vnop_inactive_args *ap)
{
 (void)nop_inactive(ap);
 return (ENOTSUP);
}
