
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef int integer_t ;


 int TASK_POLICY_LATENCY_QOS ;
 int proc_get_effective_task_policy (int ,int ) ;
 int qos_latency_policy_package (int ) ;

integer_t
task_grab_latency_qos(task_t task)
{
 return qos_latency_policy_package(proc_get_effective_task_policy(task, TASK_POLICY_LATENCY_QOS));
}
