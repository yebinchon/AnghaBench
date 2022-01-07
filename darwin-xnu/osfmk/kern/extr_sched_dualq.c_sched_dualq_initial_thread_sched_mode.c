
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_t ;
typedef int sched_mode_t ;


 int TH_MODE_FIXED ;
 int TH_MODE_TIMESHARE ;
 scalar_t__ kernel_task ;

__attribute__((used)) static sched_mode_t
sched_dualq_initial_thread_sched_mode(task_t parent_task)
{
 if (parent_task == kernel_task)
  return TH_MODE_FIXED;
 else
  return TH_MODE_TIMESHARE;
}
