
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ boot_args ;
struct TYPE_4__ {scalar_t__ bootArgs; } ;


 TYPE_2__ PE_state ;
 int csr_allow_all ;
 int kBootArgsFlagCSRBoot ;

void
csr_init(void)
{
 boot_args *args = (boot_args *)PE_state.bootArgs;
 if (args->flags & kBootArgsFlagCSRBoot) {

  csr_allow_all = 1;
 }
}
