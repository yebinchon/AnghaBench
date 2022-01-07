
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_4__ {int sched_flags; int rwlock_count; } ;


 int TH_SFLAG_RW_PROMOTED ;
 TYPE_1__* current_thread () ;
 int lck_rw_clear_promotion (TYPE_1__*,int ) ;

void
clear_thread_rwlock_boost(void)
{
 thread_t thread = current_thread();

 if ((thread->rwlock_count-- == 1) && (thread->sched_flags & TH_SFLAG_RW_PROMOTED)) {

  lck_rw_clear_promotion(thread, 0);
 }
}
