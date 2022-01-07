
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
typedef int boolean_t ;


 scalar_t__ current_thread () ;
 int kasan_lock (int *) ;
 scalar_t__ kasan_lock_held (scalar_t__) ;

__attribute__((used)) static bool
thread_enter_fakestack(boolean_t *flags)
{
 thread_t cur = current_thread();
 if (cur && kasan_lock_held(cur)) {

  return 0;
 }
 kasan_lock(flags);
 return 1;
}
