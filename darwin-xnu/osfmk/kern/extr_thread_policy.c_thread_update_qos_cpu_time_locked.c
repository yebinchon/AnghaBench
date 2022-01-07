
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_5__* thread_t ;
typedef TYPE_6__* task_t ;
struct TYPE_10__ {scalar_t__ cpu_time_qos_user_interactive; scalar_t__ cpu_time_qos_user_initiated; scalar_t__ cpu_time_qos_legacy; scalar_t__ cpu_time_qos_utility; scalar_t__ cpu_time_qos_background; scalar_t__ cpu_time_qos_maintenance; scalar_t__ cpu_time_qos_default; } ;
struct TYPE_8__ {scalar_t__ cpu_time_qos_user_interactive; scalar_t__ cpu_time_qos_user_initiated; scalar_t__ cpu_time_qos_legacy; scalar_t__ cpu_time_qos_utility; scalar_t__ cpu_time_qos_background; scalar_t__ cpu_time_qos_maintenance; scalar_t__ cpu_time_qos_default; } ;
struct TYPE_13__ {TYPE_3__ cpu_time_rqos_stats; TYPE_1__ cpu_time_eqos_stats; } ;
struct TYPE_11__ {int thrp_qos; } ;
struct TYPE_9__ {int thep_qos; } ;
struct TYPE_12__ {TYPE_4__ requested_policy; TYPE_2__ effective_policy; scalar_t__ vtimer_qos_save; int system_timer; int user_timer; TYPE_6__* task; } ;


 int OSAddAtomic64 (scalar_t__,scalar_t__*) ;







 int panic (char*,int) ;
 scalar_t__ timer_grab (int *) ;

__attribute__((used)) static void
thread_update_qos_cpu_time_locked(thread_t thread)
{
 task_t task = thread->task;
 uint64_t timer_sum, timer_delta;
 timer_sum = timer_grab(&thread->user_timer);
 timer_sum += timer_grab(&thread->system_timer);
 timer_delta = timer_sum - thread->vtimer_qos_save;

 thread->vtimer_qos_save = timer_sum;

 uint64_t* task_counter = ((void*)0);


 switch (thread->effective_policy.thep_qos) {
  case 131: task_counter = &task->cpu_time_eqos_stats.cpu_time_qos_default; break;
  case 132: task_counter = &task->cpu_time_eqos_stats.cpu_time_qos_maintenance; break;
  case 134: task_counter = &task->cpu_time_eqos_stats.cpu_time_qos_background; break;
  case 128: task_counter = &task->cpu_time_eqos_stats.cpu_time_qos_utility; break;
  case 133: task_counter = &task->cpu_time_eqos_stats.cpu_time_qos_legacy; break;
  case 130: task_counter = &task->cpu_time_eqos_stats.cpu_time_qos_user_initiated; break;
  case 129: task_counter = &task->cpu_time_eqos_stats.cpu_time_qos_user_interactive; break;
  default:
   panic("unknown effective QoS: %d", thread->effective_policy.thep_qos);
 }

 OSAddAtomic64(timer_delta, task_counter);


 switch (thread->requested_policy.thrp_qos) {
  case 131: task_counter = &task->cpu_time_rqos_stats.cpu_time_qos_default; break;
  case 132: task_counter = &task->cpu_time_rqos_stats.cpu_time_qos_maintenance; break;
  case 134: task_counter = &task->cpu_time_rqos_stats.cpu_time_qos_background; break;
  case 128: task_counter = &task->cpu_time_rqos_stats.cpu_time_qos_utility; break;
  case 133: task_counter = &task->cpu_time_rqos_stats.cpu_time_qos_legacy; break;
  case 130: task_counter = &task->cpu_time_rqos_stats.cpu_time_qos_user_initiated; break;
  case 129: task_counter = &task->cpu_time_rqos_stats.cpu_time_qos_user_interactive; break;
  default:
   panic("unknown requested QoS: %d", thread->requested_policy.thrp_qos);
 }

 OSAddAtomic64(timer_delta, task_counter);
}
