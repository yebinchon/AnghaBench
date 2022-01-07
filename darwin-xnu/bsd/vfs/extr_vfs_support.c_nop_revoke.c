
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_revoke_args {int a_context; int a_flags; int a_vp; } ;


 int vn_revoke (int ,int ,int ) ;

int
nop_revoke(struct vnop_revoke_args *ap)
{
 return vn_revoke(ap->a_vp, ap->a_flags, ap->a_context);
}
