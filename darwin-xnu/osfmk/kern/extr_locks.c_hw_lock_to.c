
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int thread_t ;
typedef TYPE_1__* hw_lock_t ;
struct TYPE_7__ {int lock_data; } ;


 int FALSE ;
 uintptr_t LCK_MTX_THREAD_TO_STATE (int ) ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_SPIN_LOCK_ACQUIRE ;
 uintptr_t PLATFORM_LCK_ILOCK ;
 int TRUE ;
 scalar_t__ atomic_compare_exchange (int *,int ,uintptr_t,int ,int ) ;
 int current_thread () ;
 int disable_preemption_for_thread (int ) ;
 unsigned int hw_lock_lock_contended (TYPE_1__*,uintptr_t,int ,int ) ;
 int memory_order_acquire_smp ;
 scalar_t__ ordered_load_hw (TYPE_1__*) ;
 int ordered_store_hw (TYPE_1__*,uintptr_t) ;

unsigned int
hw_lock_to(hw_lock_t lock, uint64_t timeout)
{
 thread_t thread;
 uintptr_t state;
 unsigned int success = 0;

 thread = current_thread();
 disable_preemption_for_thread(thread);
 state = LCK_MTX_THREAD_TO_STATE(thread) | PLATFORM_LCK_ILOCK;
 (void)timeout;
 if (ordered_load_hw(lock) == 0) {
  ordered_store_hw(lock, state);
  success = 1;
 }





 return success;
}
