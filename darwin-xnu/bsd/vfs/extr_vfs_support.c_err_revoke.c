
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_revoke_args {int dummy; } ;


 int ENOTSUP ;
 int nop_revoke (struct vnop_revoke_args*) ;

int
err_revoke(struct vnop_revoke_args *ap)
{
 (void)nop_revoke(ap);
 return (ENOTSUP);
}
