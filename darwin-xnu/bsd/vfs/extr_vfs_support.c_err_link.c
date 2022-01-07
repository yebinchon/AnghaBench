
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_link_args {int dummy; } ;


 int ENOTSUP ;
 int nop_link (struct vnop_link_args*) ;

int
err_link(struct vnop_link_args *ap)
{
 (void)nop_link(ap);
 return (ENOTSUP);
}
