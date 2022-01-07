
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_4__* thread_t ;
struct TYPE_8__ {int thep_io_tier; int thep_latency_qos; int thep_through_qos; int thep_qos; int thep_new_sockets_bg; int thep_all_sockets_bg; int thep_io_passive; int thep_darwinbg; } ;
struct TYPE_9__ {int iotier_override; TYPE_3__ effective_policy; TYPE_2__* task; } ;
struct TYPE_6__ {int tep_all_sockets_bg; } ;
struct TYPE_7__ {TYPE_1__ effective_policy; } ;


 int MIN (int,int) ;
 int THROTTLE_LEVEL_NONE ;
 int panic (char*,int) ;

int
proc_get_effective_thread_policy(thread_t thread,
                                 int flavor)
{
 int value = 0;

 switch (flavor) {
  case 134:







   value = thread->effective_policy.thep_darwinbg ? 1 : 0;
   break;
  case 133:




   value = thread->effective_policy.thep_io_tier;
   if (thread->iotier_override != THROTTLE_LEVEL_NONE)
    value = MIN(value, thread->iotier_override);
   break;
  case 130:
   value = thread->effective_policy.thep_io_passive ? 1 : 0;
   if (thread->iotier_override != THROTTLE_LEVEL_NONE &&
       thread->iotier_override < thread->effective_policy.thep_io_tier)
    value = 1;
   break;
  case 135:







   value = (thread->effective_policy.thep_all_sockets_bg ||
            thread->task->effective_policy.tep_all_sockets_bg) ? 1 : 0;
   break;
  case 131:




   value = thread->effective_policy.thep_new_sockets_bg ? 1 : 0;
   break;
  case 132:




   value = thread->effective_policy.thep_latency_qos;
   break;
  case 128:






   value = thread->effective_policy.thep_through_qos;
   break;
  case 129:





   value = thread->effective_policy.thep_qos;
   break;
  default:
   panic("unknown thread policy flavor %d", flavor);
   break;
 }

 return value;
}
