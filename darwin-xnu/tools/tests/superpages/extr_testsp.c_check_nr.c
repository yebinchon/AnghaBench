
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int boolean_t ;


 int FALSE ;
 int PAGE_SIZE ;
 int TRUE ;
 int check_r (scalar_t__,int,int*) ;
 int error ;
 int sprintf (int ,char*) ;

boolean_t
check_nr(mach_vm_address_t addr, mach_vm_size_t size, int *res) {
 int i;
 boolean_t ret;
 for (i=0; i<size/PAGE_SIZE; i++) {
  if ((ret = check_r(addr+i*PAGE_SIZE, PAGE_SIZE, res))) {
   sprintf(error, "page still readable");
   return FALSE;
  }
 }
 return TRUE;
}
