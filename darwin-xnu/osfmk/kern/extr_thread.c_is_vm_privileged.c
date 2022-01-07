
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int options; } ;


 int FALSE ;
 int TH_OPT_VMPRIV ;
 int TRUE ;
 TYPE_1__* current_thread () ;

boolean_t
is_vm_privileged(void)
{
 return current_thread()->options & TH_OPT_VMPRIV ? TRUE : FALSE;
}
