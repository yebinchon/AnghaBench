
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TaskHandle_t ;


 int eNoAction ;
 int free (void*) ;
 void* malloc (int) ;
 scalar_t__ pdPASS ;
 int portMAX_DELAY ;
 int printf (char*,...) ;
 scalar_t__ xTaskNotify (int ,int ,int ) ;
 scalar_t__ xTaskNotifyWait (int ,int ,int *,int ) ;

void blink_task2(void *pvParameter)
{
    TaskHandle_t task = (TaskHandle_t)pvParameter;

    while(1) {
        if (xTaskNotifyWait(0, 0, ((void*)0), portMAX_DELAY) != pdPASS) {
            printf("Failed to wait for main task!\n");
            return;
        }
        void *a = malloc(65);
        printf("Alloced 65 bytes @ %p\n", a);
        void *b = malloc(97);
        printf("Alloced 97 bytes @ %p\n", b);
        free(a);
        printf("Freed @ %p\n", a);
        b = malloc(11);
        printf("Alloced 11 bytes @ %p\n", b);
        b = malloc(24);
        printf("Alloced 24 bytes @ %p\n", b);
        free(b);
        printf("Freed @ %p\n", b);
        if (xTaskNotify(task, 0, eNoAction) != pdPASS) {
            printf("Failed to notify main task!\n");
            return;
        }
    }
}
