
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct thread_requested_policy {int thrp_ext_darwinbg; int thrp_int_darwinbg; int thrp_ext_iotier; int thrp_ext_iopassive; int thrp_int_iotier; int thrp_int_iopassive; int thrp_qos; int thrp_qos_override; int thrp_latency_qos; int thrp_through_qos; int thrp_qos_workq_override; int thrp_qos_relprio; int thrp_qos_promote; int thrp_qos_ipc_override; int thrp_terminated; } ;
struct TYPE_3__ {struct thread_requested_policy requested_policy; } ;


 int TASK_POLICY_ATTRIBUTE ;

 int TASK_POLICY_EXTERNAL ;
 int assert (int) ;
 int panic (char*,int) ;
 int proc_tier_to_iopol (int,int) ;

__attribute__((used)) static int
thread_get_requested_policy_spinlocked(thread_t thread,
                                       int category,
                                       int flavor,
                                       int* value2)
{
 int value = 0;

 struct thread_requested_policy requested = thread->requested_policy;

 switch (flavor) {
  case 140:
   if (category == TASK_POLICY_EXTERNAL)
    value = requested.thrp_ext_darwinbg;
   else
    value = requested.thrp_int_darwinbg;
   break;
  case 138:
   if (category == TASK_POLICY_EXTERNAL)
    value = proc_tier_to_iopol(requested.thrp_ext_iotier,
                               requested.thrp_ext_iopassive);
   else
    value = proc_tier_to_iopol(requested.thrp_int_iotier,
                               requested.thrp_int_iopassive);
   break;
  case 139:
   if (category == TASK_POLICY_EXTERNAL)
    value = requested.thrp_ext_iotier;
   else
    value = requested.thrp_int_iotier;
   break;
  case 136:
   if (category == TASK_POLICY_EXTERNAL)
    value = requested.thrp_ext_iopassive;
   else
    value = requested.thrp_int_iopassive;
   break;
  case 135:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = requested.thrp_qos;
   break;
  case 132:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = requested.thrp_qos_override;
   break;
  case 137:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = requested.thrp_latency_qos;
   break;
  case 128:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = requested.thrp_through_qos;
   break;
  case 130:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = requested.thrp_qos_workq_override;
   break;
  case 134:
   assert(category == TASK_POLICY_ATTRIBUTE);
   assert(value2 != ((void*)0));
   value = requested.thrp_qos;
   *value2 = requested.thrp_qos_relprio;
   break;
  case 131:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = requested.thrp_qos_promote;
   break;
  case 133:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = requested.thrp_qos_ipc_override;
   break;
  case 129:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = requested.thrp_terminated;
   break;

  default:
   panic("unknown policy_flavor %d", flavor);
   break;
 }

 return value;
}
