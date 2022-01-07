
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delete_done; int timer; int delete_start; } ;
typedef TYPE_1__ timer_delete_test_args_t ;


 int esp_timer_delete (int ) ;
 int portMAX_DELAY ;
 int printf (char*) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void timer_delete_task(void* arg)
{
    timer_delete_test_args_t* args = (timer_delete_test_args_t*) arg;
    xSemaphoreTake(args->delete_start, portMAX_DELAY);
    printf("Deleting the timer\n");
    esp_timer_delete(args->timer);
    printf("Timer deleted\n");
    xSemaphoreGive(args->delete_done);
    vTaskDelete(((void*)0));
}
