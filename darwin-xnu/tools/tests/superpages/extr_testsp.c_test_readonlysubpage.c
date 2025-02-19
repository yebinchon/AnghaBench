
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
 int VM_PROT_READ ;
 int check_kr (int,char*) ;
 int check_nw (scalar_t__,int ) ;
 int check_r (scalar_t__,int ,int *) ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,scalar_t__*,int ,int) ;
 int mach_vm_deallocate (int ,scalar_t__,int ) ;
 int mach_vm_protect (int ,scalar_t__,scalar_t__,int ,int ) ;

boolean_t
test_readonlysubpage() {
 int kr;
 int ret;
 mach_vm_address_t addr = 0;
 mach_vm_size_t size = SUPERPAGE_SIZE;

 kr = mach_vm_allocate(mach_task_self(), &addr, size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
 if (!(ret = check_kr(kr, "mach_vm_allocate"))) return ret;

 mach_vm_protect(mach_task_self(), addr+PAGE_SIZE, PAGE_SIZE, 0, VM_PROT_READ);
 if (!(ret = check_kr(kr, "mach_vm_protect"))) return ret;

 if (!(ret = check_r(addr, size, ((void*)0)))) return ret;
 if (!(ret = check_nw(addr, size))) return ret;

 kr = mach_vm_deallocate(mach_task_self(), addr, size);
 if (!(ret = check_kr(kr, "mach_vm_deallocate"))) return ret;

 return TRUE;
}
