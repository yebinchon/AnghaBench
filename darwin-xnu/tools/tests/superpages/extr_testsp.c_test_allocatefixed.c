
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
typedef int boolean_t ;


 int FIXED_ADDRESS1 ;
 int SUPERPAGE_SIZE ;
 int TRUE ;
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ;
 int check_addr (int ,int ,char*) ;
 int check_kr (int,char*) ;
 int check_nr (int ,int ,int *) ;
 int check_rw (int ,int ) ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,int *,int ,int ) ;
 int mach_vm_deallocate (int ,int ,int ) ;

boolean_t
test_allocatefixed() {
 int kr;
 int ret;
 mach_vm_address_t addr = FIXED_ADDRESS1;
 mach_vm_size_t size = SUPERPAGE_SIZE;

 kr = mach_vm_allocate(mach_task_self(), &addr, size, VM_FLAGS_SUPERPAGE_SIZE_2MB);
 if (!(ret = check_kr(kr, "mach_vm_allocate"))) return ret;
 if (!(ret = check_addr(addr, FIXED_ADDRESS1, "mach_vm_allocate"))) return ret;
 if (!(ret = check_rw(addr, size))) return ret;
 kr = mach_vm_deallocate(mach_task_self(), addr, size);
 if (!(ret = check_kr(kr, "mach_vm_deallocate"))) return ret;
 if (!(ret = check_nr(addr, size, ((void*)0)))) return ret;
 return TRUE;
}
