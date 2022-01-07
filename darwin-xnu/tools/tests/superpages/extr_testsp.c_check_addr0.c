
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_address_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int error ;
 int sprintf (int ,char*,char*) ;

boolean_t
check_addr0(mach_vm_address_t addr, char *fn) {
 if (!addr) {
  sprintf(error, "%s() returned address 0", fn);
  return FALSE;
 }
 return TRUE;
}
