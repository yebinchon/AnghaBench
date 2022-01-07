
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;


 int task_clear_cpuusage_locked (int ,int) ;
 int task_lock (int ) ;
 int task_unlock (int ) ;

int
task_clear_cpuusage(task_t task, int cpumon_entitled)
{
 int retval = 0;

 task_lock(task);
 retval = task_clear_cpuusage_locked(task, cpumon_entitled);
 task_unlock(task);

 return(retval);
}
