
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int boolean_t ;


 int FALSE ;
 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_QOS ;
 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 int TRUE ;
 scalar_t__ proc_get_thread_policy (int ,int ,int ) ;

boolean_t
thread_has_qos_policy(thread_t thread) {
 return (proc_get_thread_policy(thread, TASK_POLICY_ATTRIBUTE, TASK_POLICY_QOS) != THREAD_QOS_UNSPECIFIED) ? TRUE : FALSE;
}
