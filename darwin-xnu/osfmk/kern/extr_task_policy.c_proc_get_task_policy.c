
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct task_requested_policy {int trp_ext_darwinbg; int trp_int_darwinbg; int trp_ext_iotier; int trp_ext_iopassive; int trp_int_iotier; int trp_int_iopassive; int trp_bg_iotier; int trp_role; int trp_sfi_managed; } ;
struct TYPE_5__ {struct task_requested_policy requested_policy; } ;


 int TASK_POLICY_ATTRIBUTE ;


 int TASK_POLICY_EXTERNAL ;





 int assert (int) ;
 int panic (char*,int) ;
 int proc_tier_to_iopol (int,int) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

int
proc_get_task_policy(task_t task,
                     int category,
                     int flavor)
{
 int value = 0;

 task_lock(task);

 struct task_requested_policy requested = task->requested_policy;

 switch (flavor) {
  case 134:
   if (category == TASK_POLICY_EXTERNAL)
    value = requested.trp_ext_darwinbg;
   else
    value = requested.trp_int_darwinbg;
   break;
  case 131:
   if (category == TASK_POLICY_EXTERNAL)
    value = proc_tier_to_iopol(requested.trp_ext_iotier,
                               requested.trp_ext_iopassive);
   else
    value = proc_tier_to_iopol(requested.trp_int_iotier,
                               requested.trp_int_iopassive);
   break;
  case 132:
   if (category == TASK_POLICY_EXTERNAL)
    value = requested.trp_ext_iotier;
   else
    value = requested.trp_int_iotier;
   break;
  case 130:
   if (category == TASK_POLICY_EXTERNAL)
    value = requested.trp_ext_iopassive;
   else
    value = requested.trp_int_iopassive;
   break;
  case 133:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = proc_tier_to_iopol(requested.trp_bg_iotier, 0);
   break;
  case 129:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = requested.trp_role;
   break;
  case 128:
   assert(category == TASK_POLICY_ATTRIBUTE);
   value = requested.trp_sfi_managed;
   break;
  default:
   panic("unknown policy_flavor %d", flavor);
   break;
 }

 task_unlock(task);

 return value;
}
