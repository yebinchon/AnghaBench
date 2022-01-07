
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_address_t ;
typedef int boolean_t ;


 int FALSE ;
 int SUPERPAGE_MASK ;
 int TRUE ;
 int error ;
 int sprintf (int ,char*,int) ;

boolean_t
check_align(mach_vm_address_t addr) {
 if (addr & !SUPERPAGE_MASK) {
  sprintf(error, "address not aligned properly: 0x%llx", addr);
  return FALSE;
 }
 return TRUE;
}
