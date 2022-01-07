
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_5__ {scalar_t__ rusage_cpu_perthr_interval; scalar_t__ rusage_cpu_perthr_percentage; } ;


 int KERN_SUCCESS ;
 int task_lock_assert_owned (TYPE_1__*) ;
 int task_suspend_cpumon (TYPE_1__*) ;

int
task_disable_cpumon(task_t task)
{
 int kret;

 task_lock_assert_owned(task);

 kret = task_suspend_cpumon(task);
 if (kret) return kret;


 task->rusage_cpu_perthr_percentage = 0;
 task->rusage_cpu_perthr_interval = 0;

 return (KERN_SUCCESS);
}
