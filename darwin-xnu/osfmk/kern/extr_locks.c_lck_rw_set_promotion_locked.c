
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_4__ {scalar_t__ rwlock_count; int sched_flags; } ;


 int LcksOpts ;
 int TH_SFLAG_RW_PROMOTED ;
 int assert (int) ;
 int disLkRWPrio ;
 int sched_thread_promote_reason (TYPE_1__*,int,int ) ;

void
lck_rw_set_promotion_locked(thread_t thread)
{
 if (LcksOpts & disLkRWPrio)
  return;

 assert(thread->rwlock_count > 0);

 if (!(thread->sched_flags & TH_SFLAG_RW_PROMOTED))
  sched_thread_promote_reason(thread, TH_SFLAG_RW_PROMOTED, 0);
}
