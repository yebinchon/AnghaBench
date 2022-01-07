
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int QueueHandle_t ;


 int QUEUE_LEN ;
 int portMAX_DELAY ;
 int* sync_flags ;
 int sync_sem ;
 int vTaskDelete (int *) ;
 size_t xPortGetCoreID () ;
 int xQueueSendToBack (int ,int*,int ) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void send_task(void *arg)
{
    QueueHandle_t queue = (QueueHandle_t)arg;


    xSemaphoreTake(sync_sem, portMAX_DELAY);
    sync_flags[xPortGetCoreID()] = 1;
    while (!sync_flags[!xPortGetCoreID()]) {
        ;
    }


    for (int i = 0; i < QUEUE_LEN; i++) {
        uint32_t item = i;
        xQueueSendToBack(queue, &item, portMAX_DELAY);
    }

    xSemaphoreGive(sync_sem);
    vTaskDelete(((void*)0));
}
