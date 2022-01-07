
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int hw_lock_t ;


 int current_thread () ;
 int disable_preemption_for_thread (int ) ;
 int enable_preemption () ;
 unsigned int hw_lock_try_internal (int ,int ) ;

unsigned int
hw_lock_try(hw_lock_t lock)
{
 thread_t thread = current_thread();
 disable_preemption_for_thread(thread);
 unsigned int success = hw_lock_try_internal(lock, thread);
 if (!success)
  enable_preemption();
 return success;
}
