
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hw_lock_t ;


 scalar_t__ __improbable (int) ;
 int current_thread () ;
 int hw_lock_unlock_internal (int ) ;
 int panic (char*,int ) ;
 int preemption_disabled_for_thread (int ) ;

void
hw_lock_unlock_nopreempt(hw_lock_t lock)
{
 if (__improbable(!preemption_disabled_for_thread(current_thread())))
  panic("Attempt to release no-preempt spinlock %p in preemptible context", lock);
 hw_lock_unlock_internal(lock);
}
