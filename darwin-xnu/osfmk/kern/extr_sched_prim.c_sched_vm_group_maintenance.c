
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* thread_t ;
typedef int spl_t ;
typedef scalar_t__ processor_t ;
typedef void* boolean_t ;
struct TYPE_9__ {int state; scalar_t__ runq; scalar_t__ last_made_runnable_time; } ;


 void* FALSE ;
 scalar_t__ PROCESSOR_NULL ;
 int SCHED_PREEMPT ;
 int SCHED_TAILQ ;
 TYPE_1__* THREAD_NULL ;
 int TH_RUN ;
 int TH_WAIT ;
 void* TRUE ;
 int assert (int) ;
 scalar_t__ mach_absolute_time () ;
 scalar_t__ master_processor ;
 scalar_t__ sched_tick_interval ;
 int sched_vm_group_list_lock ;
 void* sched_vm_group_temporarily_unbound ;
 int sched_vm_group_thread_count ;
 TYPE_1__** sched_vm_group_thread_list ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int splsched () ;
 int splx (int ) ;
 int thread_bind_internal (TYPE_1__*,scalar_t__) ;
 int thread_lock (TYPE_1__*) ;
 int thread_run_queue_reinsert (TYPE_1__*,int) ;
 void* thread_run_queue_remove (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

__attribute__((used)) static void
sched_vm_group_maintenance(void)
{
 uint64_t ctime = mach_absolute_time();
 uint64_t longtime = ctime - sched_tick_interval;
 int i;
 spl_t s;
 boolean_t high_latency_observed = FALSE;
 boolean_t runnable_and_not_on_runq_observed = FALSE;
 boolean_t bind_target_changed = FALSE;
 processor_t bind_target = PROCESSOR_NULL;


 simple_lock(&sched_vm_group_list_lock);

 s = splsched();

 for (i=0; i < sched_vm_group_thread_count; i++) {
  thread_t thread = sched_vm_group_thread_list[i];
  assert(thread != THREAD_NULL);
  thread_lock(thread);
  if ((thread->state & (TH_RUN|TH_WAIT)) == TH_RUN) {
   if (thread->runq != PROCESSOR_NULL && thread->last_made_runnable_time < longtime) {
    high_latency_observed = TRUE;
   } else if (thread->runq == PROCESSOR_NULL) {

    runnable_and_not_on_runq_observed = TRUE;
   }
  }
  thread_unlock(thread);

  if (high_latency_observed && runnable_and_not_on_runq_observed) {

   break;
  }
 }

 splx(s);

 if (sched_vm_group_temporarily_unbound) {

  if (!high_latency_observed) {

   bind_target_changed = TRUE;
   bind_target = master_processor;
   sched_vm_group_temporarily_unbound = FALSE;
  }
 } else {







  if (high_latency_observed && !runnable_and_not_on_runq_observed) {

   bind_target_changed = TRUE;
   bind_target = PROCESSOR_NULL;
   sched_vm_group_temporarily_unbound = TRUE;
  }
 }

 if (bind_target_changed) {
  s = splsched();
  for (i=0; i < sched_vm_group_thread_count; i++) {
   thread_t thread = sched_vm_group_thread_list[i];
   boolean_t removed;
   assert(thread != THREAD_NULL);

   thread_lock(thread);
   removed = thread_run_queue_remove(thread);
   if (removed || ((thread->state & (TH_RUN | TH_WAIT)) == TH_WAIT)) {
    thread_bind_internal(thread, bind_target);
   } else {





    if (bind_target == PROCESSOR_NULL) {
     thread_bind_internal(thread, bind_target);
    } else {
     sched_vm_group_temporarily_unbound = TRUE;
    }
   }

   if (removed) {
    thread_run_queue_reinsert(thread, SCHED_PREEMPT | SCHED_TAILQ);
   }
   thread_unlock(thread);
  }
  splx(s);
 }

 simple_unlock(&sched_vm_group_list_lock);
}
