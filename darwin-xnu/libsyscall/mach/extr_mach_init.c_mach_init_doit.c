
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ _COMM_PAGE_KERNEL_PAGE_SHIFT ;
 scalar_t__ _COMM_PAGE_USER_PAGE_SHIFT_32 ;
 scalar_t__ _COMM_PAGE_USER_PAGE_SHIFT_64 ;
 int _init_cpu_capabilities () ;
 int _pthread_set_self (int ) ;
 int _task_reply_port ;
 int mach_reply_port () ;
 int mach_task_self_ ;
 int task_self_trap () ;
 int vm_kernel_page_mask ;
 int vm_kernel_page_shift ;
 int vm_kernel_page_size ;
 int vm_page_mask ;
 int vm_page_shift ;
 int vm_page_size ;

void
mach_init_doit(void)
{

 mach_task_self_ = task_self_trap();
 _task_reply_port = mach_reply_port();

 if (vm_kernel_page_shift == 0) {





  vm_kernel_page_size = PAGE_SIZE;
  vm_kernel_page_mask = PAGE_MASK;
  vm_kernel_page_shift = PAGE_SHIFT;

 }

 if (vm_page_shift == 0) {





  vm_page_shift = vm_kernel_page_shift;

  vm_page_size = 1 << vm_page_shift;
  vm_page_mask = vm_page_size - 1;
 }

 _init_cpu_capabilities();
 _pthread_set_self(0);
}
