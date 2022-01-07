
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OSIncrementAtomicLong (int *) ;
 scalar_t__ __asan_option_detect_stack_use_after_return ;
 int suspend_count ;
 scalar_t__ suspend_threshold ;

void
kasan_fakestack_suspend(void)
{
 if (OSIncrementAtomicLong(&suspend_count) == suspend_threshold) {
  __asan_option_detect_stack_use_after_return = 0;
 }
}
