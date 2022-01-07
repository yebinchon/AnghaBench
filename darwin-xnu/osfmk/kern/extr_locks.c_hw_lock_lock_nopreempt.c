
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int hw_lock_t ;


 scalar_t__ __improbable (int) ;
 int current_thread () ;
 int hw_lock_lock_internal (int ,int ) ;
 int panic (char*,int ) ;
 int preemption_disabled_for_thread (int ) ;

void
hw_lock_lock_nopreempt(hw_lock_t lock)
{
 thread_t thread = current_thread();
 if (__improbable(!preemption_disabled_for_thread(thread)))
  panic("Attempt to take no-preempt spinlock %p in preemptible context", lock);
 hw_lock_lock_internal(lock, thread);
}
