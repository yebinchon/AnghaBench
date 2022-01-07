
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {void* stack; } ;
typedef TYPE_1__ lwp_cntrl ;


 scalar_t__ CPU_MINIMUM_STACK_SIZE ;
 scalar_t__ __lwp_stack_adjust (scalar_t__) ;
 int __lwp_stack_isenough (scalar_t__) ;
 void* __lwp_wkspace_allocate (scalar_t__) ;

u32 __lwp_stack_allocate(lwp_cntrl *thethread,u32 size)
{
 void *stack_addr = ((void*)0);

 if(!__lwp_stack_isenough(size))
  size = CPU_MINIMUM_STACK_SIZE;

 size = __lwp_stack_adjust(size);
 stack_addr = __lwp_wkspace_allocate(size);

 if(!stack_addr) size = 0;

 thethread->stack = stack_addr;
 return size;
}
