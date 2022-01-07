
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int test_done; int delete_done; int delete_start; } ;
typedef TYPE_1__ timer_delete_test_args_t ;


 int portMAX_DELAY ;
 int printf (char*) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void timer_delete_test_callback(void* arg)
{
    timer_delete_test_args_t* args = (timer_delete_test_args_t*) arg;
    printf("Timer callback called\n");
    xSemaphoreGive(args->delete_start);
    xSemaphoreTake(args->delete_done, portMAX_DELAY);
    printf("Callback complete\n");
    xSemaphoreGive(args->test_done);
}
