
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int thread_t ;
typedef TYPE_1__* hw_lock_t ;
struct TYPE_5__ {int lock_data; } ;


 int FALSE ;
 int LCK_MTX_THREAD_TO_STATE (int ) ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_SPIN_LOCK_ACQUIRE ;
 int PLATFORM_LCK_ILOCK ;
 int atomic_compare_exchange (int*,int ,int,int ,int ) ;
 int memory_order_acquire_smp ;
 scalar_t__ ordered_load_hw (TYPE_1__*) ;

__attribute__((used)) static inline unsigned int
hw_lock_try_internal(hw_lock_t lock, thread_t thread)
{
 int success = 0;
 if (lock->lock_data == 0) {
  lock->lock_data = LCK_MTX_THREAD_TO_STATE(thread) | PLATFORM_LCK_ILOCK;
  success = 1;
 }
 return success;
}
