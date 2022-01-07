
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_readdirattr_args {int dummy; } ;


 int ENOTSUP ;
 int nop_readdirattr (struct vnop_readdirattr_args*) ;

int
err_readdirattr(struct vnop_readdirattr_args *ap)
{
       (void)nop_readdirattr(ap);
 return (ENOTSUP);
}
