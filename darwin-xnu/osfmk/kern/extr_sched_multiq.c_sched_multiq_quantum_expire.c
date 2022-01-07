
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* sched_entry_t ;
typedef TYPE_3__* processor_t ;
typedef int processor_set_t ;
typedef int entry_queue_t ;
struct TYPE_10__ {int current_pri; int processor_set; } ;
struct TYPE_9__ {scalar_t__ runq; } ;
struct TYPE_8__ {int sched_group; TYPE_3__* last_processor; } ;


 scalar_t__ MULTIQ_ERUNQ ;
 int SCHED_TAILQ ;
 scalar_t__ deep_drain ;
 int entry_queue_change_entry (int ,TYPE_2__*,int ) ;
 TYPE_2__* group_entry_for_pri (int ,int ) ;
 int multiq_main_entryq (TYPE_3__*) ;
 int pset_lock (int ) ;
 int pset_unlock (int ) ;

void
sched_multiq_quantum_expire(thread_t thread)
{
 if (deep_drain) {





  processor_t processor = thread->last_processor;
  processor_set_t pset = processor->processor_set;
  entry_queue_t entryq = multiq_main_entryq(processor);

  pset_lock(pset);

  sched_entry_t entry = group_entry_for_pri(thread->sched_group, processor->current_pri);

  if (entry->runq == MULTIQ_ERUNQ) {
   entry_queue_change_entry(entryq, entry, SCHED_TAILQ);
  }

  pset_unlock(pset);
 }
}
