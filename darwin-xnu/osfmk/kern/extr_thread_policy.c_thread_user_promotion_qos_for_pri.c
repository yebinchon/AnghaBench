
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_qos_t ;
struct TYPE_2__ {int* qos_pri; } ;


 int THREAD_QOS_MAINTENANCE ;
 int THREAD_QOS_USER_INTERACTIVE ;
 TYPE_1__ thread_qos_policy_params ;

thread_qos_t
thread_user_promotion_qos_for_pri(int priority)
{
 int qos;
 for (qos = THREAD_QOS_USER_INTERACTIVE; qos > THREAD_QOS_MAINTENANCE; qos--) {
  if (thread_qos_policy_params.qos_pri[qos] <= priority) {
   return qos;
  }
 }
 return THREAD_QOS_MAINTENANCE;
}
