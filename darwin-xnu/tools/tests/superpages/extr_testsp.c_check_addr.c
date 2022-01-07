
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_vm_address_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int error ;
 int sprintf (int ,char*,char*,scalar_t__,scalar_t__) ;

boolean_t
check_addr(mach_vm_address_t addr1, mach_vm_address_t addr2, char *fn) {
 if (addr1 != addr2) {
  sprintf(error, "%s() returned address %llx instead of %llx", fn, addr1, addr2);
  return FALSE;
 }
 return TRUE;
}
