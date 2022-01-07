
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
typedef int caddr_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ address; scalar_t__ bytesused; int oldbytes; } ;


 scalar_t__ FALSE ;
 int MAX_BREAKPOINTS ;
 scalar_t__ TRUE ;
 TYPE_1__* breakpoint_list ;
 scalar_t__ breakpoints_initialized ;
 int kdp_machine_vm_write (int ,int ,int ) ;
 int printf (char*) ;

boolean_t
kdp_remove_all_breakpoints(void)
{
 int i;
 boolean_t breakpoint_found = FALSE;

 if (breakpoints_initialized)
 {
  for(i=0;i < MAX_BREAKPOINTS; i++)
  {
   if (breakpoint_list[i].address)
   {
    kdp_machine_vm_write((caddr_t)&(breakpoint_list[i].oldbytes), (mach_vm_address_t)breakpoint_list[i].address, (mach_vm_size_t)breakpoint_list[i].bytesused);
    breakpoint_found = TRUE;
    breakpoint_list[i].address = 0;
   }
  }

  if (breakpoint_found)
   printf("kdp_remove_all_breakpoints: found extant breakpoints, removing them.\n");
 }
 return breakpoint_found;
}
