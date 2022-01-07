
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ks_flags; } ;


 int KS_F_HAS_LISTENERS ;
 TYPE_1__* kauth_scope_fileop ;

int
kauth_authorize_fileop_has_listeners(void)
{




 if ((kauth_scope_fileop->ks_flags & KS_F_HAS_LISTENERS) != 0) {
  return(1);
 }
 return (0);
}
