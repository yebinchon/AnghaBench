
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int kdp_error_t ;
typedef int caddr_t ;
typedef int breakinstr ;
struct TYPE_2__ {scalar_t__ address; int bytesused; int oldbytes; } ;


 int KDPERR_BREAKPOINT_ALREADY_SET ;
 int KDPERR_MAX_BREAKPOINTS ;
 int KDPERR_NO_ERROR ;
 int MAX_BREAKINSN_BYTES ;
 int MAX_BREAKPOINTS ;
 TYPE_1__* breakpoint_list ;
 scalar_t__ breakpoints_initialized ;
 int kdp_machine_get_breakinsn (int *,int*) ;
 int kdp_machine_vm_read (scalar_t__,int ,int ) ;
 int kdp_machine_vm_write (int ,scalar_t__,int) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int ,int *,int) ;
 int printf (char*) ;

kdp_error_t
kdp_set_breakpoint_internal(
    mach_vm_address_t address
)
{

 uint8_t breakinstr[MAX_BREAKINSN_BYTES], oldinstr[MAX_BREAKINSN_BYTES];
 uint32_t breakinstrsize = sizeof(breakinstr);
 mach_vm_size_t cnt;
 int i;

 kdp_machine_get_breakinsn(breakinstr, &breakinstrsize);

 if(breakpoints_initialized == 0)
    {
  for(i=0;(i < MAX_BREAKPOINTS); breakpoint_list[i].address=0, i++);
  breakpoints_initialized++;
    }

 cnt = kdp_machine_vm_read(address, (caddr_t)&oldinstr, (mach_vm_size_t)breakinstrsize);

 if (0 == memcmp(oldinstr, breakinstr, breakinstrsize)) {
  printf("A trap was already set at that address, not setting new breakpoint\n");

  return KDPERR_BREAKPOINT_ALREADY_SET;
 }

 for(i=0;(i < MAX_BREAKPOINTS) && (breakpoint_list[i].address != 0); i++);

 if (i == MAX_BREAKPOINTS) {
  return KDPERR_MAX_BREAKPOINTS;
 }

 breakpoint_list[i].address = address;
 memcpy(breakpoint_list[i].oldbytes, oldinstr, breakinstrsize);
 breakpoint_list[i].bytesused = breakinstrsize;

 cnt = kdp_machine_vm_write((caddr_t)&breakinstr, address, breakinstrsize);

 return KDPERR_NO_ERROR;
}
