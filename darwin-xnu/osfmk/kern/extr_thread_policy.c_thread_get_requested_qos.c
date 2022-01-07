
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_qos_t ;


 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_QOS_AND_RELPRIO ;
 int proc_get_thread_policy_locked (int ,int ,int ,int*) ;

thread_qos_t
thread_get_requested_qos(thread_t thread, int *relpri)
{
 int relprio_value = 0;
 thread_qos_t qos;

 qos = proc_get_thread_policy_locked(thread, TASK_POLICY_ATTRIBUTE,
   TASK_POLICY_QOS_AND_RELPRIO, &relprio_value);
 if (relpri) *relpri = -relprio_value;
 return qos;
}
