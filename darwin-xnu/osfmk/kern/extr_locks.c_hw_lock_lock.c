
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int hw_lock_t ;


 int current_thread () ;
 int disable_preemption_for_thread (int ) ;
 int hw_lock_lock_internal (int ,int ) ;

void
hw_lock_lock(hw_lock_t lock)
{
 thread_t thread = current_thread();
 disable_preemption_for_thread(thread);
 hw_lock_lock_internal(lock, thread);
}
