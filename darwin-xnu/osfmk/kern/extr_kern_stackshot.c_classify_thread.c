
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef TYPE_2__* processor_t ;
typedef enum thread_classification { ____Placeholder_thread_classification } thread_classification ;
typedef int boolean_t ;
struct TYPE_6__ {scalar_t__ state; TYPE_1__* active_thread; } ;
struct TYPE_5__ {scalar_t__ last_run_time; TYPE_2__* last_processor; } ;


 TYPE_2__* PROCESSOR_NULL ;
 scalar_t__ PROCESSOR_RUNNING ;
 int STACKSHOT_COLLECT_DELTA_SNAPSHOT ;
 scalar_t__ stack_snapshot_delta_since_timestamp ;
 int tc_delta_snapshot ;
 int tc_full_snapshot ;

__attribute__((used)) static enum thread_classification
classify_thread(thread_t thread, boolean_t * thread_on_core_p, uint32_t trace_flags)
{
 boolean_t collect_delta_stackshot = ((trace_flags & STACKSHOT_COLLECT_DELTA_SNAPSHOT) != 0);

 processor_t last_processor = thread->last_processor;

 boolean_t thread_on_core =
     (last_processor != PROCESSOR_NULL && last_processor->state == PROCESSOR_RUNNING && last_processor->active_thread == thread);

 *thread_on_core_p = thread_on_core;



 if (!collect_delta_stackshot || thread_on_core || (thread->last_run_time > stack_snapshot_delta_since_timestamp)) {
  return tc_full_snapshot;
 } else {
  return tc_delta_snapshot;
 }
}
