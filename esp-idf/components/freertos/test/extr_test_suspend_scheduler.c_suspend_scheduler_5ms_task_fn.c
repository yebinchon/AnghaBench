
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ets_delay_us (int) ;
 int sched_suspended ;
 int vTaskDelete (int *) ;
 int vTaskSuspendAll () ;
 int xTaskResumeAll () ;

__attribute__((used)) static void suspend_scheduler_5ms_task_fn(void *ignore)
{
    vTaskSuspendAll();
    sched_suspended = 1;
    for (int i = 0; i <5; i++) {
        ets_delay_us(1000);
    }
    xTaskResumeAll();
    sched_suspended = 0;
    vTaskDelete(((void*)0));
}
