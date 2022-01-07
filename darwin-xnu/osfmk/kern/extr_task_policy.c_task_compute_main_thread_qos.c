
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
struct TYPE_4__ {int trp_qos_clamp; int trp_apptype; } ;
struct TYPE_5__ {scalar_t__ bsd_info; TYPE_1__ requested_policy; } ;


 int MAX (int,int ) ;
 int MIN (int,int) ;






 int THREAD_QOS_BACKGROUND ;
 int THREAD_QOS_LEGACY ;
 int THREAD_QOS_UNSPECIFIED ;
 int THREAD_QOS_USER_INITIATED ;
 int THREAD_QOS_USER_INTERACTIVE ;
 scalar_t__ initproc ;

int
task_compute_main_thread_qos(task_t task)
{
 int primordial_qos = THREAD_QOS_UNSPECIFIED;

 int qos_clamp = task->requested_policy.trp_qos_clamp;

 switch (task->requested_policy.trp_apptype) {
  case 132:
  case 133:
   primordial_qos = THREAD_QOS_USER_INTERACTIVE;
   break;

  case 129:
  case 128:
  case 131:
   primordial_qos = THREAD_QOS_LEGACY;
   break;

  case 130:
   primordial_qos = THREAD_QOS_BACKGROUND;
   break;
 }

 if (task->bsd_info == initproc) {

  primordial_qos = MAX(primordial_qos, THREAD_QOS_USER_INITIATED);
 }

 if (qos_clamp != THREAD_QOS_UNSPECIFIED) {
  if (primordial_qos != THREAD_QOS_UNSPECIFIED) {
   primordial_qos = MIN(qos_clamp, primordial_qos);
  } else {
   primordial_qos = qos_clamp;
  }
 }

 return primordial_qos;
}
