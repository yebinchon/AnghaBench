
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int QueueHandle_t ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,int ,int,void*) ;
 int HEAP_TRACE_ALL ;
 int TAG ;
 int free_task ;
 int heap_trace_start (int ) ;
 int heap_trace_stop () ;
 void* malloc (int) ;
 scalar_t__ pdPASS ;
 int portMAX_DELAY ;
 scalar_t__ portNUM_PROCESSORS ;
 int portTICK_PERIOD_MS ;
 int vTaskDelay (int) ;
 scalar_t__ xQueueSend (int ,void*,int ) ;
 int xTaskCreatePinnedToCore (int ,char*,int,int ,int,int *,scalar_t__) ;
 int xTaskGetCurrentTaskHandle () ;

__attribute__((used)) static void alloc_task(void *p)
{
    QueueHandle_t queue = (QueueHandle_t)p;

    xTaskCreatePinnedToCore(free_task, "free", 2048, queue, 5, ((void*)0), portNUM_PROCESSORS-1);


    heap_trace_start(HEAP_TRACE_ALL);
    for(int i = 1; i < 5; i++) {
        uint32_t sz = 2*i;
        void *p = malloc(sz/2);

        p = malloc(sz);
        ESP_LOGI(TAG, "Task[%p]: allocated %d bytes @ %p", xTaskGetCurrentTaskHandle(), sz, p);
        if (xQueueSend(queue, ( void * )&p, portMAX_DELAY) != pdPASS) {
            ESP_LOGE(TAG, "Failed to send to queue!");
        }
        vTaskDelay(100/portTICK_PERIOD_MS);
    }

    heap_trace_stop();
    while(1);
}
