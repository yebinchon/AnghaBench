
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t PAGE_MASK ;
 int __munmap (void*,size_t) ;
 int __syscall_logger (int ,uintptr_t,uintptr_t,size_t,int ,int ) ;
 scalar_t__ mach_task_self () ;
 int stack_logging_type_vm_deallocate ;

int
munmap(void *addr, size_t len)
{
 size_t offset;

 if (len == 0) {





  return 0;
 }





 offset = ((uintptr_t) addr) & PAGE_MASK;
 addr = (void *) (((uintptr_t) addr) & ~PAGE_MASK);
 len += offset;

 if (__syscall_logger) {
  __syscall_logger(stack_logging_type_vm_deallocate, (uintptr_t)mach_task_self(), (uintptr_t)addr, len, 0, 0);
 }

 int result = __munmap(addr, len);

 return result;
}
