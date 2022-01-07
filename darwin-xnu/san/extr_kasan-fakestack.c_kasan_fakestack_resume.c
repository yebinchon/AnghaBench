
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long OSDecrementAtomicLong (int *) ;
 int __asan_option_detect_stack_use_after_return ;
 int assert (int) ;
 scalar_t__ fakestack_enabled ;
 int suspend_count ;
 long suspend_threshold ;

void
kasan_fakestack_resume(void)
{
 long orig = OSDecrementAtomicLong(&suspend_count);
 assert(orig >= 0);

 if (fakestack_enabled && orig == suspend_threshold) {
  __asan_option_detect_stack_use_after_return = 1;
 }
}
