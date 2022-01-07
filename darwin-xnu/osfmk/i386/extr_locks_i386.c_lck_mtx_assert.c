
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ thread_t ;
struct TYPE_6__ {scalar_t__ lck_mtx_owner; } ;
typedef TYPE_1__ lck_mtx_t ;


 unsigned int LCK_MTX_ASSERT_NOTOWNED ;
 unsigned int LCK_MTX_ASSERT_OWNED ;
 int LCK_MTX_ILOCKED_MSK ;
 int LCK_MTX_MLOCKED_MSK ;
 int LCK_MTX_TAG_INDIRECT ;
 int assert (int) ;
 scalar_t__ current_thread () ;
 int get_indirect_mutex (TYPE_1__**,int*) ;
 int ordered_load_mtx_state (TYPE_1__*) ;
 int panic (char*,TYPE_1__*) ;

__attribute__((noinline))
void
lck_mtx_assert(
 lck_mtx_t *lock,
 unsigned int type)
{
 thread_t thread, owner;
 uint32_t state;

 thread = current_thread();
 state = ordered_load_mtx_state(lock);

 if (state == LCK_MTX_TAG_INDIRECT) {
  get_indirect_mutex(&lock, &state);
 }

 owner = (thread_t)lock->lck_mtx_owner;

 if (type == LCK_MTX_ASSERT_OWNED) {
  if (owner != thread || !(state & (LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK)))
   panic("mutex (%p) not owned\n", lock);
 } else {
  assert (type == LCK_MTX_ASSERT_NOTOWNED);
  if (owner == thread)
   panic("mutex (%p) owned\n", lock);
 }
}
