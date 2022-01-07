
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int boolean_t ;


 int FALSE ;
 int PAGE_SIZE ;
 int SUPERPAGE_SIZE ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ;
 int check_kr (int,char*) ;
 int error ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,scalar_t__*,int,int) ;
 int mach_vm_deallocate (int ,scalar_t__,int) ;
 int sprintf (int ,char*,int) ;

boolean_t
test_reallocate() {
 mach_vm_address_t addr = 0, addr2;
 mach_vm_size_t size = SUPERPAGE_SIZE;
 int kr, ret;
 int i;

 kr = mach_vm_allocate(mach_task_self(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
 if (!(ret = check_kr(kr, "mach_vm_allocate"))) return ret;


 for (i=0; i<SUPERPAGE_SIZE/PAGE_SIZE; i++) {
  addr2 = addr + i*PAGE_SIZE;
  size = PAGE_SIZE;
  kr = mach_vm_allocate(mach_task_self(), &addr2, size, 0);
  if ((ret = check_kr(kr, "mach_vm_allocate"))) {
   sprintf(error, "could allocate already allocated space, page %d", i);
   mach_vm_deallocate(mach_task_self(), addr, size);
   return FALSE;
  }
 }
 kr = mach_vm_deallocate(mach_task_self(), addr, size);
 if (!(ret = check_kr(kr, "mach_vm_deallocate"))) return ret;
 return TRUE;
}
