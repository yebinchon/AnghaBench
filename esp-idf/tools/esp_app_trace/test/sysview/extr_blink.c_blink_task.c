
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TaskHandle_t ;


 scalar_t__ ESP_OK ;
 int HEAP_TRACE_ALL ;
 int blink_task2 ;
 int eNoAction ;
 int free (void*) ;
 scalar_t__ heap_trace_init_tohost () ;
 int heap_trace_start (int ) ;
 int heap_trace_stop () ;
 void* malloc (int) ;
 scalar_t__ pdPASS ;
 int portMAX_DELAY ;
 int printf (char*,...) ;
 int xTaskCreatePinnedToCore (int *,char*,int,int ,int,int *,int) ;
 int xTaskGetCurrentTaskHandle () ;
 scalar_t__ xTaskNotify (int ,int ,int ) ;
 scalar_t__ xTaskNotifyWait (int ,int ,int *,int ) ;

void blink_task(void *pvParameter)
{
    TaskHandle_t task = 0;

    if(heap_trace_init_tohost() != ESP_OK) {
        printf("Failed to init heap trace!\n");
        return;
    }
    xTaskCreatePinnedToCore(&blink_task2, "blink_task2", 2048, xTaskGetCurrentTaskHandle(), 5, &task, 1);

    while(1) {
        heap_trace_start(HEAP_TRACE_ALL);
        if (xTaskNotify(task, 0, eNoAction) != pdPASS) {
            printf("Failed to notify slave task!\n");
            return;
        }
        void *a = malloc(64);
        printf("Alloced 64 bytes @ %p\n", a);
        void *b = malloc(96);
        printf("Alloced 96 bytes @ %p\n", b);
        free(a);
        printf("Freed @ %p\n", a);
        b = malloc(10);
        printf("Alloced 10 bytes @ %p\n", b);
        b = malloc(23);
        printf("Alloced 23 bytes @ %p\n", b);
        free(b);
        printf("Freed @ %p\n", b);
        if (xTaskNotifyWait(0, 0, ((void*)0), portMAX_DELAY) != pdPASS) {
            printf("Failed to wait for slave task!\n");
            return;
        }
        heap_trace_stop();
    }
}
