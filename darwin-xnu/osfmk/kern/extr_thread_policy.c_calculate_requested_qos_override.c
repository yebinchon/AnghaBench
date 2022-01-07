
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct thread_qos_override {struct thread_qos_override* override_next; int override_qos; } ;
struct TYPE_3__ {struct thread_qos_override* overrides; } ;


 int MAX (int,int ) ;
 scalar_t__ QOS_OVERRIDE_MODE_IGNORE_OVERRIDE ;
 int THREAD_QOS_UNSPECIFIED ;
 scalar_t__ qos_override_mode ;

__attribute__((used)) static int
calculate_requested_qos_override(thread_t thread)
{
 if (qos_override_mode == QOS_OVERRIDE_MODE_IGNORE_OVERRIDE) {
  return THREAD_QOS_UNSPECIFIED;
 }


 struct thread_qos_override *override;
 int qos_override = THREAD_QOS_UNSPECIFIED;

 override = thread->overrides;
 while (override) {
  qos_override = MAX(qos_override, override->override_qos);
  override = override->override_next;
 }

 return qos_override;
}
