
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int SUPERPAGE_SIZE ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_SUPERPAGE_SIZE_2MB ;
 int check_addr0 (scalar_t__,char*) ;
 int check_align (scalar_t__) ;
 int check_kr (int,char*) ;
 int check_rw (scalar_t__,int ) ;
 scalar_t__ global_addr ;
 int global_size ;
 int mach_task_self () ;
 int mach_vm_allocate (int ,scalar_t__*,int ,int) ;

boolean_t
test_allocate() {
 int kr, ret;

 global_addr = 0;
 global_size = SUPERPAGE_SIZE;

 kr = mach_vm_allocate(mach_task_self(), &global_addr, global_size, VM_FLAGS_ANYWHERE | VM_FLAGS_SUPERPAGE_SIZE_2MB);
 if (!(ret = check_kr(kr, "mach_vm_allocate"))) return ret;
 if (!(ret = check_addr0(global_addr, "mach_vm_allocate"))) return ret;
 if (!(ret = check_align(global_addr))) return ret;
 if (!(ret = check_rw(global_addr, global_size))) return ret;

 return TRUE;
}
