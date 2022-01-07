
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;


 int ALLOCATION_SIZE_VM_OBJECT ;
 scalar_t__ KERN_SUCCESS ;
 int MADV_FREE ;
 int SIGUSR1 ;
 int VM_FLAGS_ANYWHERE ;
 int VM_MAKE_TAG (int ) ;
 int VM_TAG1 ;
 int VM_TAG2 ;
 int getpid () ;
 int getppid () ;
 int kill (int ,int ) ;
 int mach_task_self () ;
 scalar_t__ mach_vm_allocate (int ,scalar_t__*,int ,int) ;
 int madvise (void*,size_t,int ) ;
 int pause () ;
 int printf (char*,int,int) ;

__attribute__((used)) static void allocate_vm_objects(void)
{
 uint64_t alloc_size = ALLOCATION_SIZE_VM_OBJECT, i = 0;

 printf("[%d] Allocating VM regions, each of size %lld KB, each backed by a VM object\n", getpid(), (alloc_size>>10));
 for (i = 0; ; i++) {
  mach_vm_address_t addr = (mach_vm_address_t)((void*)0);


  int flags = VM_MAKE_TAG((i % 2)? VM_TAG1: VM_TAG2) | VM_FLAGS_ANYWHERE;

  if ((mach_vm_allocate(mach_task_self(), &addr, (mach_vm_size_t)alloc_size, flags)) != KERN_SUCCESS) {
   break;
  }

  *((int *)addr) = 0;

  madvise((void *)addr, (size_t)alloc_size, MADV_FREE);
 }
 printf("[%d] Number of allocations: %lld\n", getpid(), i);


 kill(getppid(), SIGUSR1);

 while (1) {
  pause();
 }
}
