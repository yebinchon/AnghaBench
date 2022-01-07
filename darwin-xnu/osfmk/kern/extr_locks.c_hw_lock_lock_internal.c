
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int thread_t ;
typedef TYPE_1__* hw_lock_t ;
struct TYPE_7__ {uintptr_t lock_data; } ;


 uintptr_t LCK_MTX_THREAD_TO_STATE (int ) ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_SPIN_LOCK_ACQUIRE ;
 uintptr_t PLATFORM_LCK_ILOCK ;
 int TRUE ;
 scalar_t__ atomic_compare_exchange (uintptr_t*,int ,uintptr_t,int ,int ) ;
 int hw_lock_lock_contended (TYPE_1__*,uintptr_t,int ,int ) ;
 int memory_order_acquire_smp ;
 scalar_t__ ordered_load_hw (TYPE_1__*) ;
 int panic (char*,TYPE_1__*) ;
 int spinlock_timeout_panic ;

__attribute__((used)) static inline void
hw_lock_lock_internal(hw_lock_t lock, thread_t thread)
{
 uintptr_t state;

 state = LCK_MTX_THREAD_TO_STATE(thread) | PLATFORM_LCK_ILOCK;
 if (lock->lock_data)
  panic("Spinlock held %p", lock);
 lock->lock_data = state;




 return;
}
