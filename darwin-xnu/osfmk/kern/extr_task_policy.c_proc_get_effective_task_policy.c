
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
struct TYPE_4__ {int tep_darwinbg; int tep_all_sockets_bg; int tep_latency_qos; int tep_through_qos; int tep_role; int tep_watchers_bg; int tep_sfi_managed; } ;
struct TYPE_5__ {TYPE_1__ effective_policy; } ;
 int panic (char*,int) ;

int
proc_get_effective_task_policy(task_t task,
                               int flavor)
{
 int value = 0;

 switch (flavor) {
  case 133:







   value = task->effective_policy.tep_darwinbg;
   break;
  case 134:







   value = task->effective_policy.tep_all_sockets_bg;
   break;
  case 132:




   value = task->effective_policy.tep_latency_qos;
   break;
  case 129:





   value = task->effective_policy.tep_through_qos;
   break;
  case 131:




   value = task->effective_policy.tep_role;
   break;
  case 128:



   value = task->effective_policy.tep_watchers_bg;
   break;
  case 130:



   value = task->effective_policy.tep_sfi_managed;
   break;
  default:
   panic("unknown policy_flavor %d", flavor);
   break;
 }

 return value;
}
