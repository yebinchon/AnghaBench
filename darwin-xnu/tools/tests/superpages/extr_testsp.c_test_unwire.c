
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
typedef int boolean_t ;


 int FALSE ;
 int SUPERPAGE_SIZE ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ;
 int VM_PROT_NONE ;
 int check_kr (int,char*) ;
 int check_rw (int ,int ) ;
 int error ;
 int mach_host_self () ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,int *,int ,int) ;
 int mach_vm_deallocate (int ,int ,int ) ;
 int mach_vm_wire (int ,int ,int ,int ,int ) ;
 int sprintf (int ,char*) ;

boolean_t
test_unwire() {
 int kr;
 int ret;
 mach_vm_address_t addr = 0;
 mach_vm_size_t size = SUPERPAGE_SIZE;

 kr = mach_vm_allocate(mach_task_self(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
 if (!(ret = check_kr(kr, "mach_vm_allocate"))) return ret;

 kr = mach_vm_wire(mach_host_self(), mach_task_self(), addr, size, VM_PROT_NONE);
 if ((ret = check_kr(kr, "mach_vm_wire"))) {
  sprintf(error, "could unwire");
  return FALSE;
 }

 if (!(ret = check_rw(addr, size))) return ret;

 kr = mach_vm_deallocate(mach_task_self(), addr, size);
 if (!(ret = check_kr(kr, "mach_vm_deallocate"))) return ret;

 return TRUE;
}
