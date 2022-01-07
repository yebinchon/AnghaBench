
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int portTICK_RATE_MS ;
 int printf (char*) ;
 int recur_func () ;
 int stdout ;
 int vTaskDelay (int) ;

void unaligned_ptr_task(void *pvParameter)
{
    printf("Task 'unaligned_ptr_task' start.\n");
    while (1) {
        vTaskDelay(1000 / portTICK_RATE_MS);
        printf("Task 'unaligned_ptr_task' run.\n");
        recur_func();
    }
    fflush(stdout);
}
