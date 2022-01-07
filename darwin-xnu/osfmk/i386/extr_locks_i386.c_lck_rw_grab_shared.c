
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__ lck_rw_t ;
typedef int boolean_t ;


 int FALSE ;
 int LCK_RW_INTERLOCK ;
 int LCK_RW_PRIV_EXCL ;
 int LCK_RW_SHARED_MASK ;
 scalar_t__ LCK_RW_SHARED_READER ;
 int LCK_RW_WANT_UPGRADE ;
 int LCK_RW_WANT_WRITE ;
 int atomic_exchange_abort () ;
 int atomic_exchange_begin32 (int *,int*,int ) ;
 int atomic_exchange_complete32 (int *,int,int,int ) ;
 int lck_rw_interlock_spin (TYPE_1__*) ;
 int memory_order_acquire_smp ;

__attribute__((used)) static boolean_t
lck_rw_grab_shared(lck_rw_t *lock)
{
 uint32_t data, prev;

 for ( ; ; ) {
  data = atomic_exchange_begin32(&lock->data, &prev, memory_order_acquire_smp);
  if ((data & LCK_RW_INTERLOCK) == 0)
   break;
  atomic_exchange_abort();
  lck_rw_interlock_spin(lock);
 }
 if (data & (LCK_RW_WANT_WRITE | LCK_RW_WANT_UPGRADE)) {
  if (((data & LCK_RW_SHARED_MASK) == 0) || (data & LCK_RW_PRIV_EXCL)) {
   atomic_exchange_abort();
   return FALSE;
  }
 }
 data += LCK_RW_SHARED_READER;
 return atomic_exchange_complete32(&lock->data, prev, data, memory_order_acquire_smp);
}
