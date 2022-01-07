
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_POLICY_INTERNAL ;
 int TASK_POLICY_IOPOL ;
 int current_thread () ;
 int proc_set_thread_policy (int ,int ,int ,int) ;

void throttle_set_thread_io_policy(int policy)
{
 proc_set_thread_policy(current_thread(), TASK_POLICY_INTERNAL, TASK_POLICY_IOPOL, policy);
}
