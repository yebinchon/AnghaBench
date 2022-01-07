
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_vm_size_t ;
typedef int mach_vm_address_t ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ SUPERPAGE_SIZE ;
 int TRUE ;
 int check_r (int ,scalar_t__,int*) ;
 int check_w (int ,scalar_t__) ;
 int error ;
 int sprintf (int ,char*) ;

boolean_t
check_rw(mach_vm_address_t addr, mach_vm_size_t size) {
 int ret;
 int res;
 if (!(ret = check_w(addr, size))) return ret;
 if (!(ret = check_r(addr, size, &res))) return ret;
 if ((size==SUPERPAGE_SIZE) && (res!=0xfff00000)) {
  sprintf(error, "checksum error");
  return FALSE;
 }

 return TRUE;
}
