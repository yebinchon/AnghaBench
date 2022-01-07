
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueueHandle_t ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,int ,void*) ;
 int TAG ;
 int free (void*) ;
 scalar_t__ pdPASS ;
 int portMAX_DELAY ;
 scalar_t__ xQueueReceive (int ,void*,int ) ;
 int xTaskGetCurrentTaskHandle () ;

__attribute__((used)) static void free_task(void *p)
{
    QueueHandle_t queue = (QueueHandle_t)p;
    while (1) {
        void *p = ((void*)0);
        if (xQueueReceive(queue, ( void * )&p, portMAX_DELAY) != pdPASS) {
            ESP_LOGE(TAG, "Failed to send to queue!");
        } else {
            ESP_LOGI(TAG, "Task[%p]: free memory @ %p", xTaskGetCurrentTaskHandle(), p);
            free(p);
        }
    }
}
