
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* processor_t ;
typedef scalar_t__ perfcontrol_class_t ;
typedef int boolean_t ;
typedef int ast_t ;
struct TYPE_14__ {scalar_t__ state; scalar_t__ current_perfctl_class; int current_recommended_pset_type; int current_sfi_class; int current_pri; TYPE_1__* active_thread; } ;
struct TYPE_13__ {int sfi_class; int sched_pri; } ;


 int AST_NONE ;
 int PERFCONTROL_ATTR_UPDATE ;
 scalar_t__ PROCESSOR_RUNNING ;
 scalar_t__ PROCESSOR_SHUTDOWN ;
 int assert (int) ;
 int ast_on (int ) ;
 int ast_propagate (TYPE_1__*) ;
 int csw_check (TYPE_2__*,int ) ;
 TYPE_1__* current_thread () ;
 int mach_approximate_time () ;
 int machine_switch_perfcontrol_state_update (int ,int ,int ,TYPE_1__*) ;
 int recommended_pset_type (TYPE_1__*) ;
 int sfi_thread_classify (TYPE_1__*) ;
 scalar_t__ thread_get_perfcontrol_class (TYPE_1__*) ;
 int thread_lock (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;

void
ast_check(processor_t processor)
{
 if (processor->state != PROCESSOR_RUNNING &&
     processor->state != PROCESSOR_SHUTDOWN)
  return;

 thread_t thread = processor->active_thread;

 assert(thread == current_thread());

 thread_lock(thread);





 ast_propagate(thread);

 boolean_t needs_callout = 0;
 processor->current_pri = thread->sched_pri;
 processor->current_sfi_class = thread->sfi_class = sfi_thread_classify(thread);
 processor->current_recommended_pset_type = recommended_pset_type(thread);
 perfcontrol_class_t thread_class = thread_get_perfcontrol_class(thread);
 if (thread_class != processor->current_perfctl_class) {





     needs_callout = 1;
 }
 processor->current_perfctl_class = thread_class;

 ast_t preempt;

 if ((preempt = csw_check(processor, AST_NONE)) != AST_NONE)
  ast_on(preempt);

 thread_unlock(thread);

 if (needs_callout) {
     machine_switch_perfcontrol_state_update(PERFCONTROL_ATTR_UPDATE,
      mach_approximate_time(), 0, thread);
 }
}
