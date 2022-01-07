
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int thread_t ;
struct TYPE_3__ {scalar_t__ type; uintptr_t lck_spin_data; } ;
typedef TYPE_1__ lck_spin_t ;


 unsigned int LCK_ASSERT_NOTOWNED ;
 unsigned int LCK_ASSERT_OWNED ;
 uintptr_t LCK_ILOCK ;
 scalar_t__ LCK_SPIN_TYPE ;
 int current_thread () ;
 int panic (char*,...) ;

void
lck_spin_assert(lck_spin_t *lock, unsigned int type)
{
 thread_t thread, holder;
 uintptr_t state;

 if (lock->type != LCK_SPIN_TYPE)
  panic("Invalid spinlock %p", lock);

 state = lock->lck_spin_data;
 holder = (thread_t)(state & ~LCK_ILOCK);
 thread = current_thread();
 if (type == LCK_ASSERT_OWNED) {
  if (holder == 0)
   panic("Lock not owned %p = %lx", lock, state);
  if (holder != thread)
   panic("Lock not owned by current thread %p = %lx", lock, state);
  if ((state & LCK_ILOCK) == 0)
   panic("Lock bit not set %p = %lx", lock, state);
 } else if (type == LCK_ASSERT_NOTOWNED) {
  if (holder != 0) {
   if (holder == thread)
    panic("Lock owned by current thread %p = %lx", lock, state);
   else
    panic("Lock %p owned by thread %p", lock, holder);
  }
  if (state & LCK_ILOCK)
   panic("Lock bit set %p = %lx", lock, state);
 } else
  panic("lck_spin_assert(): invalid arg (%u)", type);
}
