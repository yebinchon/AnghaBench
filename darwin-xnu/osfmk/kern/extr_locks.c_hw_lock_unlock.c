
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hw_lock_t ;


 int enable_preemption () ;
 int hw_lock_unlock_internal (int ) ;

void
hw_lock_unlock(hw_lock_t lock)
{
 hw_lock_unlock_internal(lock);
 enable_preemption();
}
