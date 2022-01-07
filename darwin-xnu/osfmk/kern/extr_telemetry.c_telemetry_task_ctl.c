
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int task_t ;


 int task_lock (int ) ;
 int task_unlock (int ) ;
 int telemetry_task_ctl_locked (int ,int ,int) ;

void
telemetry_task_ctl(task_t task, uint32_t reasons, int enable_disable)
{
 task_lock(task);
 telemetry_task_ctl_locked(task, reasons, enable_disable);
 task_unlock(task);
}
