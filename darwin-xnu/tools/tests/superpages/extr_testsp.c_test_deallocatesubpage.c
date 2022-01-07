
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int boolean_t ;


 scalar_t__ PAGE_SIZE ;
 int SUPERPAGE_SIZE ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ;
 int check_kr (int,char*) ;
 int check_nr (scalar_t__,int ,int *) ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,scalar_t__*,int ,int) ;
 int mach_vm_deallocate (int ,scalar_t__,int ) ;

boolean_t
test_deallocatesubpage() {
 int kr;
 int ret;
 mach_vm_address_t addr = 0;
 mach_vm_size_t size = SUPERPAGE_SIZE;

 kr = mach_vm_allocate(mach_task_self(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
 if (!(ret = check_kr(kr, "mach_vm_allocate"))) return ret;
 kr = mach_vm_deallocate(mach_task_self(), addr + PAGE_SIZE, size);
 if (!(ret = check_kr(kr, "mach_vm_deallocate"))) return ret;
 if (!(ret = check_nr(addr, size, ((void*)0)))) return ret;
 return TRUE;
}
