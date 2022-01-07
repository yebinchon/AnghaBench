
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ boot_args ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ bootArgs; } ;


 int FALSE ;
 TYPE_2__ PE_state ;
 int TRUE ;
 int kBootArgsFlagRebootOnPanic ;

boolean_t
PE_reboot_on_panic(void)
{
 boot_args *args = (boot_args *)PE_state.bootArgs;

 if (args->flags & kBootArgsFlagRebootOnPanic)
  return TRUE;
 else
  return FALSE;
}
