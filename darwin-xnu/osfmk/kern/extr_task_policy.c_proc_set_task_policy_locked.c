
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct task_requested_policy {int trp_ext_darwinbg; int trp_int_darwinbg; int trp_ext_iotier; int trp_ext_iopassive; int trp_int_iotier; int trp_int_iopassive; int trp_bg_iotier; int trp_tal_enabled; int trp_boosted; int trp_role; int trp_terminated; int trp_base_latency_qos; int trp_base_through_qos; int trp_sfi_managed; int trp_over_latency_qos; int trp_over_through_qos; } ;
struct TYPE_3__ {struct task_requested_policy requested_policy; } ;




 int TASK_POLICY_ATTRIBUTE ;




 int TASK_POLICY_EXTERNAL ;
 int TASK_POLICY_INTERNAL ;
 int assert (int) ;
 int panic (char*,int,int,int,int) ;
 int proc_iopol_to_tier (int,int*,int*) ;

__attribute__((used)) static void
proc_set_task_policy_locked(task_t task,
                            int category,
                            int flavor,
                            int value,
                            int value2)
{
 int tier, passive;

 struct task_requested_policy requested = task->requested_policy;

 switch (flavor) {



  case 137:
   if (category == TASK_POLICY_EXTERNAL)
    requested.trp_ext_darwinbg = value;
   else
    requested.trp_int_darwinbg = value;
   break;

  case 134:
   proc_iopol_to_tier(value, &tier, &passive);
   if (category == TASK_POLICY_EXTERNAL) {
    requested.trp_ext_iotier = tier;
    requested.trp_ext_iopassive = passive;
   } else {
    requested.trp_int_iotier = tier;
    requested.trp_int_iopassive = passive;
   }
   break;

  case 135:
   if (category == TASK_POLICY_EXTERNAL)
    requested.trp_ext_iotier = value;
   else
    requested.trp_int_iotier = value;
   break;

  case 132:
   if (category == TASK_POLICY_EXTERNAL)
    requested.trp_ext_iopassive = value;
   else
    requested.trp_int_iopassive = value;
   break;



  case 136:
   assert(category == TASK_POLICY_INTERNAL);
   proc_iopol_to_tier(value, &tier, &passive);
   requested.trp_bg_iotier = tier;
   break;



  case 129:
   assert(category == TASK_POLICY_ATTRIBUTE);
   requested.trp_tal_enabled = value;
   break;

  case 138:
   assert(category == TASK_POLICY_ATTRIBUTE);
   requested.trp_boosted = value;
   break;

  case 131:
   assert(category == TASK_POLICY_ATTRIBUTE);
   requested.trp_role = value;
   break;

  case 128:
   assert(category == TASK_POLICY_ATTRIBUTE);
   requested.trp_terminated = value;
   break;

  case 141:
   assert(category == TASK_POLICY_ATTRIBUTE);
   requested.trp_base_latency_qos = value;
   break;

  case 140:
   assert(category == TASK_POLICY_ATTRIBUTE);
   requested.trp_base_through_qos = value;
   break;

  case 130:
   assert(category == TASK_POLICY_ATTRIBUTE);
   requested.trp_sfi_managed = value;
   break;

  case 139:
   assert(category == TASK_POLICY_ATTRIBUTE);
   requested.trp_base_latency_qos = value;
   requested.trp_base_through_qos = value2;
   break;

  case 133:
   assert(category == TASK_POLICY_ATTRIBUTE);
   requested.trp_over_latency_qos = value;
   requested.trp_over_through_qos = value2;
   break;

  default:
   panic("unknown task policy: %d %d %d %d", category, flavor, value, value2);
   break;
 }

 task->requested_policy = requested;
}
