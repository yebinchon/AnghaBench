
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int thread_continue_t ;
typedef int spl_t ;
typedef TYPE_2__* processor_t ;
typedef scalar_t__ processor_set_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_17__ {scalar_t__ processor_set; scalar_t__ state; scalar_t__ idle_thread; scalar_t__ active_thread; scalar_t__ next_thread; scalar_t__ processor_self; int cpu_id; } ;
struct TYPE_16__ {int last_made_runnable_time; int state; TYPE_2__* bound_processor; } ;


 scalar_t__ IP_NULL ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 int MAXPRI_KERNEL ;
 TYPE_2__* PROCESSOR_NULL ;
 scalar_t__ PROCESSOR_OFF_LINE ;
 scalar_t__ PROCESSOR_SET_NULL ;
 scalar_t__ PROCESSOR_START ;
 int THREAD_CONTINUE_NULL ;
 scalar_t__ THREAD_NULL ;
 int TH_RUN ;
 scalar_t__ cpu_start (int ) ;
 scalar_t__ idle_thread_create (TYPE_2__*) ;
 int ipc_processor_enable (TYPE_2__*) ;
 int ipc_processor_init (TYPE_2__*) ;
 scalar_t__ kernel_thread_create (int ,int *,int ,TYPE_1__**) ;
 int mach_absolute_time () ;
 TYPE_2__* master_processor ;
 scalar_t__ processor_start_thread ;
 int pset_lock (scalar_t__) ;
 int pset_unlock (scalar_t__) ;
 int pset_update_processor_state (scalar_t__,TYPE_2__*,scalar_t__) ;
 int splsched () ;
 int splx (int ) ;
 TYPE_2__* thread_bind (TYPE_2__*) ;
 int thread_block (int ) ;
 int thread_deallocate (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

kern_return_t
processor_start(
 processor_t processor)
{
 processor_set_t pset;
 thread_t thread;
 kern_return_t result;
 spl_t s;

 if (processor == PROCESSOR_NULL || processor->processor_set == PROCESSOR_SET_NULL)
  return (KERN_INVALID_ARGUMENT);

 if (processor == master_processor) {
  processor_t prev;

  prev = thread_bind(processor);
  thread_block(THREAD_CONTINUE_NULL);

  result = cpu_start(processor->cpu_id);

  thread_bind(prev);

  return (result);
 }

 s = splsched();
 pset = processor->processor_set;
 pset_lock(pset);
 if (processor->state != PROCESSOR_OFF_LINE) {
  pset_unlock(pset);
  splx(s);

  return (KERN_FAILURE);
 }

 pset_update_processor_state(pset, processor, PROCESSOR_START);
 pset_unlock(pset);
 splx(s);




 if (processor->idle_thread == THREAD_NULL) {
  result = idle_thread_create(processor);
  if (result != KERN_SUCCESS) {
   s = splsched();
   pset_lock(pset);
   pset_update_processor_state(pset, processor, PROCESSOR_OFF_LINE);
   pset_unlock(pset);
   splx(s);

   return (result);
  }
 }






 if ( processor->active_thread == THREAD_NULL &&
   processor->next_thread == THREAD_NULL ) {
  result = kernel_thread_create((thread_continue_t)processor_start_thread, ((void*)0), MAXPRI_KERNEL, &thread);
  if (result != KERN_SUCCESS) {
   s = splsched();
   pset_lock(pset);
   pset_update_processor_state(pset, processor, PROCESSOR_OFF_LINE);
   pset_unlock(pset);
   splx(s);

   return (result);
  }

  s = splsched();
  thread_lock(thread);
  thread->bound_processor = processor;
  processor->next_thread = thread;
  thread->state = TH_RUN;
  thread->last_made_runnable_time = mach_absolute_time();
  thread_unlock(thread);
  splx(s);

  thread_deallocate(thread);
 }

 if (processor->processor_self == IP_NULL)
  ipc_processor_init(processor);

 result = cpu_start(processor->cpu_id);
 if (result != KERN_SUCCESS) {
  s = splsched();
  pset_lock(pset);
  pset_update_processor_state(pset, processor, PROCESSOR_OFF_LINE);
  pset_unlock(pset);
  splx(s);

  return (result);
 }

 ipc_processor_enable(processor);

 return (KERN_SUCCESS);
}
