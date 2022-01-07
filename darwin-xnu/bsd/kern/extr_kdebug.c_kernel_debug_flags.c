
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int current_thread () ;
 int kernel_debug_internal (int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t,uintptr_t,int ) ;
 scalar_t__ thread_tid (int ) ;

void
kernel_debug_flags(
 uint32_t debugid,
 uintptr_t arg1,
 uintptr_t arg2,
 uintptr_t arg3,
 uintptr_t arg4,
 uint64_t flags)
{
 kernel_debug_internal(debugid, arg1, arg2, arg3, arg4,
  (uintptr_t)thread_tid(current_thread()), flags);
}
