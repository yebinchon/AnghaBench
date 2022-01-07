
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uthread_t ;


 int TASK_POLICY_PASSIVE_IO ;
 int current_thread () ;
 int get_bsdthread_info (int ) ;
 int proc_get_effective_thread_policy (int ,int ) ;

int
throttle_get_passive_io_policy(uthread_t *ut)
{
 if (ut != ((void*)0))
  *ut = get_bsdthread_info(current_thread());

 return (proc_get_effective_thread_policy(current_thread(), TASK_POLICY_PASSIVE_IO));
}
