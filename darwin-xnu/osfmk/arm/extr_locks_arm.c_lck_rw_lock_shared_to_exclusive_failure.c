
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_11__ {int lck_rw_want_upgrade; int lck_rw_shared_count; } ;
typedef TYPE_2__ lck_rw_t ;
typedef int boolean_t ;
struct TYPE_10__ {int sched_flags; int rwlock_count; } ;


 int DBG_FUNC_NONE ;
 int DBG_MACH_LOCKS ;
 int FALSE ;
 int KERNEL_DEBUG (int,int ,int ,int ,int ,int ) ;
 int LCK_RW_LCK_SH_TO_EX_CODE ;
 int LCK_RW_SHARED_MASK ;
 int LCK_RW_SHARED_READER ;
 int LCK_RW_WRITER_EVENT (TYPE_2__*) ;
 int LCK_RW_W_WAITING ;
 int MACHDBG_CODE (int ,int ) ;
 int TH_SFLAG_RW_PROMOTED ;
 int VM_KERNEL_UNSLIDE_OR_PERM (TYPE_2__*) ;
 TYPE_1__* current_thread () ;
 int lck_rw_clear_promotion (TYPE_1__*,int ) ;
 int panic (char*,TYPE_1__*) ;
 int thread_wakeup (int ) ;
 int unslide_for_kdebug (TYPE_2__*) ;

__attribute__((used)) static boolean_t
lck_rw_lock_shared_to_exclusive_failure(
 lck_rw_t *lck,
 uint32_t prior_lock_state)
{
 thread_t thread = current_thread();
 uint32_t rwlock_count;


 rwlock_count = thread->rwlock_count--;





 if ((prior_lock_state & LCK_RW_W_WAITING) &&
  ((prior_lock_state & LCK_RW_SHARED_MASK) == LCK_RW_SHARED_READER)) {





  thread_wakeup(LCK_RW_WRITER_EVENT(lck));
 }

 if ((rwlock_count == 1 ) && (thread->sched_flags & TH_SFLAG_RW_PROMOTED)) {

  lck_rw_clear_promotion(thread, unslide_for_kdebug(lck));
 }

 KERNEL_DEBUG(MACHDBG_CODE(DBG_MACH_LOCKS, LCK_RW_LCK_SH_TO_EX_CODE) | DBG_FUNC_NONE,
       VM_KERNEL_UNSLIDE_OR_PERM(lck), lck->lck_rw_shared_count, lck->lck_rw_want_upgrade, 0, 0);

 return (FALSE);
}
