
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ QueueHandle_t ;


 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int alloc_task ;
 int esp_log_set_vprintf (int *) ;
 int esp_sysview_vprintf ;
 scalar_t__ heap_trace_init_tohost () ;
 scalar_t__ xQueueCreate (int,int) ;
 int xTaskCreatePinnedToCore (int ,char*,int,scalar_t__,int,int *,int ) ;

void app_main(void)
{

    esp_log_set_vprintf(&esp_sysview_vprintf);
    QueueHandle_t queue = xQueueCreate(10, sizeof(void *));
    if(queue == 0) {
        ESP_LOGE(TAG, "Failed to create queue!");
        return;
    }

    if(heap_trace_init_tohost() != ESP_OK) {
        ESP_LOGE(TAG, "Failed to init heap trace!");
        return;
    }
    xTaskCreatePinnedToCore(alloc_task, "alloc", 2048, queue, 5, ((void*)0), 0);
}
