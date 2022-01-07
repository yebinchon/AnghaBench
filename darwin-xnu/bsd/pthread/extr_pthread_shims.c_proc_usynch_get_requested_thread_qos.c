
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct uthread {int uu_thread; } ;


 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_QOS ;
 int THREAD_QOS_UNSPECIFIED ;
 int THREAD_QOS_USER_INTERACTIVE ;
 int current_thread () ;
 int proc_get_thread_policy (int ,int ,int ) ;

__attribute__((used)) static int proc_usynch_get_requested_thread_qos(struct uthread *uth)
{
 thread_t thread = uth ? uth->uu_thread : current_thread();
 int requested_qos;

 requested_qos = proc_get_thread_policy(thread, TASK_POLICY_ATTRIBUTE, TASK_POLICY_QOS);







 if (requested_qos == THREAD_QOS_UNSPECIFIED) {
  requested_qos = THREAD_QOS_USER_INTERACTIVE;
 }

 return requested_qos;
}
