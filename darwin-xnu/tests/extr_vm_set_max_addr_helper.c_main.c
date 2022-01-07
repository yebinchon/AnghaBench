
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long mach_vm_address_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int VM_FLAGS_FIXED ;
 int current_task () ;
 scalar_t__ mach_vm_allocate (int ,unsigned long long*,int,int ) ;

int main(void)
{
 kern_return_t kr;
 mach_vm_address_t addr = 50ULL * 1024ULL * 1024ULL * 1024ULL;

 kr = mach_vm_allocate(current_task(), &addr, 4096, VM_FLAGS_FIXED);

 if (kr == KERN_SUCCESS) {
  return 0;
 } else {
  return 1;
 }
}
