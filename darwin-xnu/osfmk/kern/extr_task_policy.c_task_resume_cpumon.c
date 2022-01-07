
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef int kern_return_t ;


 int EINVAL ;
 int task_enable_cpumon_locked (int ) ;
 int task_lock (int ) ;
 int task_unlock (int ) ;

int
task_resume_cpumon(task_t task)
{
 kern_return_t kret;

 if (!task) {
  return EINVAL;
 }

 task_lock(task);
 kret = task_enable_cpumon_locked(task);
 task_unlock(task);

 return kret;
}
