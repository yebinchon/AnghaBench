
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MESSAGE ;
 int TIMER_GROUP_0 ;
 int eSetValueWithOverwrite ;
 int isr_give ;
 int notifs_sent ;
 int portMAX_DELAY ;
 int rec_task_handle ;
 int task_delete_semphr ;
 int timer_start (int ,int) ;
 int trigger_send_semphr ;
 int vTaskDelete (int *) ;
 int xPortGetCoreID () ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;
 int xTaskNotify (int ,int,int ) ;
 int xTaskNotifyGive (int ) ;

__attribute__((used)) static void sender_task (void* arg){
    int curcore = xPortGetCoreID();


    xSemaphoreTake(trigger_send_semphr, portMAX_DELAY);
    notifs_sent++;
    xTaskNotify(rec_task_handle, (MESSAGE << curcore), eSetValueWithOverwrite);


    xSemaphoreTake(trigger_send_semphr, portMAX_DELAY);
    notifs_sent++;
    xTaskNotifyGive(rec_task_handle);


    xSemaphoreTake(trigger_send_semphr, portMAX_DELAY);
    isr_give = 0;
    timer_start(TIMER_GROUP_0, curcore);


    xSemaphoreTake(trigger_send_semphr, portMAX_DELAY);
    isr_give = 1;
    timer_start(TIMER_GROUP_0, curcore);


    xSemaphoreGive(task_delete_semphr);
    vTaskDelete(((void*)0));
}
