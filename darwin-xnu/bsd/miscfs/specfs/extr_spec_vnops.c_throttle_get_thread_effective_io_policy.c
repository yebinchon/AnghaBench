
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_POLICY_IO ;
 int current_thread () ;
 int proc_get_effective_thread_policy (int ,int ) ;

int throttle_get_thread_effective_io_policy()
{
 return proc_get_effective_thread_policy(current_thread(), TASK_POLICY_IO);
}
