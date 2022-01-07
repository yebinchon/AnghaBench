
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TaskHandle_t ;


 int eNoAction ;
 int portMAX_DELAY ;
 int xTaskGetCurrentTaskHandle () ;
 int xTaskNotify (int ,int ,int ) ;
 int xTaskNotifyWait (int ,int ,int *,int ) ;

__attribute__((used)) static void *waiting_thread(void *arg)
{
    TaskHandle_t *task_handle = (TaskHandle_t *)arg;
    TaskHandle_t parent_task = *task_handle;

    *task_handle = xTaskGetCurrentTaskHandle();

    xTaskNotify(parent_task, 0, eNoAction);
    xTaskNotifyWait(0, 0, ((void*)0), portMAX_DELAY);
    return ((void*)0);
}
