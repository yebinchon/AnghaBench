
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
 int check_w (scalar_t__,int) ;
 int error ;
 int sprintf (int ,char*) ;

boolean_t
check_nw(mach_vm_address_t addr, mach_vm_size_t size) {
 int i;
 boolean_t ret;

 for (i=0; i<size/PAGE_SIZE; i++) {
  if ((ret = check_w(addr+i*PAGE_SIZE, PAGE_SIZE))) {
   sprintf(error, "page still writable");
   return FALSE;
  }
 }
 return TRUE;
}
