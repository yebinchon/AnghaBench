
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
typedef int boolean_t ;


 int FALSE ;
 int FIXED_ADDRESS2 ;
 int SUPERPAGE_SIZE ;
 int TRUE ;
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ;
 int check_kr (int,char*) ;
 int error ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,int *,int ,int ) ;
 int sprintf (int ,char*) ;

boolean_t
test_allocateunalignedfixed() {
 int kr;
 int ret;
 mach_vm_address_t addr = FIXED_ADDRESS2;
 mach_vm_size_t size = SUPERPAGE_SIZE;

 kr = mach_vm_allocate(mach_task_self(), &addr, size, VM_FLAGS_SUPERPAGE_SIZE_2MB);

 if ((ret = check_kr(kr, "mach_vm_allocate"))) {
  sprintf(error, "mach_vm_allocate() should have failed");
  return FALSE;
 }
 return TRUE;
}
