
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
struct timeval {int dummy; } ;


 int exit_flag ;
 int gettimeofday (struct timeval*,int *) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void get_time_task(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    struct timeval tv_time;

    while (exit_flag == 0) {
        gettimeofday(&tv_time, ((void*)0));
    }
    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
