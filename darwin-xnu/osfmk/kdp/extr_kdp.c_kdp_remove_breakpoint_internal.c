
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int kdp_error_t ;
typedef int caddr_t ;
struct TYPE_2__ {int bytesused; int oldbytes; scalar_t__ address; } ;


 int KDPERR_BREAKPOINT_NOT_FOUND ;
 int KDPERR_NO_ERROR ;
 int MAX_BREAKPOINTS ;
 TYPE_1__* breakpoint_list ;
 int kdp_machine_vm_write (int ,scalar_t__,int ) ;

kdp_error_t
kdp_remove_breakpoint_internal(
    mach_vm_address_t address
)
{
 mach_vm_size_t cnt;
 int i;

 for(i=0;(i < MAX_BREAKPOINTS) && (breakpoint_list[i].address != address); i++);

 if (i == MAX_BREAKPOINTS)
 {
  return KDPERR_BREAKPOINT_NOT_FOUND;
 }

 breakpoint_list[i].address = 0;
 cnt = kdp_machine_vm_write((caddr_t)&breakpoint_list[i].oldbytes, address, breakpoint_list[i].bytesused);

 return KDPERR_NO_ERROR;
}
