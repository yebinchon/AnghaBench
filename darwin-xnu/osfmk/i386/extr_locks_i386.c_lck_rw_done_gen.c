
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef scalar_t__ lck_rw_type_t ;
struct TYPE_12__ {int lck_rw_shared_count; scalar_t__ lck_r_waiting; scalar_t__ lck_w_waiting; scalar_t__ lck_rw_priv_excl; } ;
typedef TYPE_2__ lck_rw_t ;
struct TYPE_11__ {int sched_flags; int rwlock_count; } ;


 scalar_t__ LCK_RW_TYPE_EXCLUSIVE ;
 scalar_t__ LCK_RW_TYPE_SHARED ;
 int LOCKSTAT_RECORD (int ,TYPE_2__*,int) ;
 int LS_LCK_RW_DONE_RELEASE ;
 int RW_LOCK_READER_EVENT (TYPE_2__*) ;
 int RW_LOCK_WRITER_EVENT (TYPE_2__*) ;
 int TH_SFLAG_RW_PROMOTED ;
 TYPE_1__* current_thread () ;
 int lck_rw_clear_promotion (TYPE_1__*,int ) ;
 int panic (char*,TYPE_1__*) ;
 int thread_wakeup (int ) ;
 int unslide_for_kdebug (TYPE_2__*) ;

__attribute__((used)) static lck_rw_type_t
lck_rw_done_gen(
 lck_rw_t *lck,
 uint32_t prior_lock_state)
{
 lck_rw_t *fake_lck;
 lck_rw_type_t lock_type;
 thread_t thread;
 uint32_t rwlock_count;







 fake_lck = (lck_rw_t *)&prior_lock_state;

 if (fake_lck->lck_rw_shared_count <= 1) {
  if (fake_lck->lck_w_waiting)
   thread_wakeup(RW_LOCK_WRITER_EVENT(lck));

  if (!(fake_lck->lck_rw_priv_excl && fake_lck->lck_w_waiting) && fake_lck->lck_r_waiting)
   thread_wakeup(RW_LOCK_READER_EVENT(lck));
 }
 if (fake_lck->lck_rw_shared_count)
  lock_type = LCK_RW_TYPE_SHARED;
 else
  lock_type = LCK_RW_TYPE_EXCLUSIVE;


 thread = current_thread();
 rwlock_count = thread->rwlock_count--;





 if ((rwlock_count == 1 ) && (thread->sched_flags & TH_SFLAG_RW_PROMOTED)) {

  lck_rw_clear_promotion(thread, unslide_for_kdebug(lck));
 }





 return(lock_type);
}
