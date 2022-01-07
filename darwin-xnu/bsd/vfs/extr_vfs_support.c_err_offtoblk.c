
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_offtoblk_args {int dummy; } ;


 int ENOTSUP ;
 int nop_offtoblk (struct vnop_offtoblk_args*) ;

int
err_offtoblk(struct vnop_offtoblk_args *ap)
{
 (void)nop_offtoblk(ap);
 return (ENOTSUP);
}
