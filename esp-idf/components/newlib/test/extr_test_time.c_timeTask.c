
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
struct timeval {int tv_sec; int tv_usec; } ;


 int exit_flag ;
 int gettimeofday (struct timeval*,int *) ;
 int settimeofday (struct timeval*,int *) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void timeTask(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    struct timeval tv_time = { .tv_sec = 1520000000, .tv_usec = 900000 };


    while (exit_flag == 0) {
        tv_time.tv_sec += 1;
        settimeofday(&tv_time, ((void*)0));
        gettimeofday(&tv_time, ((void*)0));
    }
    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
