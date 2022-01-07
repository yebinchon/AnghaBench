
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bad_ptr_func () ;
 int fflush (int ) ;
 int portTICK_RATE_MS ;
 int printf (char*) ;
 int stdout ;
 int vTaskDelay (int) ;

void bad_ptr_task(void *pvParameter)
{
    printf("Task 'bad_ptr_task' start.\n");
    while (1) {
        vTaskDelay(1000 / portTICK_RATE_MS);
        printf("Task 'bad_ptr_task' run.\n");
        bad_ptr_func();
    }
    fflush(stdout);
}
