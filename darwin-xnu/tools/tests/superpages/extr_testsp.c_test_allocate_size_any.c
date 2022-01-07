
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
typedef int boolean_t ;


 int PAGE_SIZE ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_SUPERPAGE_SIZE_ANY ;
 int check_addr0 (int ,char*) ;
 int check_kr (int,char*) ;
 int check_nr (int ,int,int *) ;
 int check_rw (int ,int) ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,int *,int,int) ;
 int mach_vm_deallocate (int ,int ,int) ;

boolean_t
test_allocate_size_any() {
 int kr;
 int ret;
 mach_vm_address_t addr = 0;
 mach_vm_size_t size = 2*PAGE_SIZE;

 kr = mach_vm_allocate(mach_task_self(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_ANY);
 if (!(ret = check_kr(kr, "mach_vm_allocate"))) return ret;
 if (!(ret = check_addr0(addr, "mach_vm_allocate"))) return ret;
 if (!(ret = check_rw(addr, size))) return ret;
 kr = mach_vm_deallocate(mach_task_self(), addr, size);
 if (!(ret = check_kr(kr, "mach_vm_deallocate"))) return ret;
 if (!(ret = check_nr(addr, size, ((void*)0)))) return ret;
 return TRUE;
}
