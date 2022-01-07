
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SemaphoreHandle_t ;


 int esp_light_sleep_start () ;
 int fflush (int ) ;
 int printf (char*,int,int) ;
 int stdout ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 int xPortGetCoreID () ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void test_light_sleep(void* arg)
{
    vTaskDelay(2);
    for (int i = 0; i < 1000; ++i) {
        printf("%d %d\n", xPortGetCoreID(), i);
        fflush(stdout);
        esp_light_sleep_start();
    }
    SemaphoreHandle_t done = (SemaphoreHandle_t) arg;
    xSemaphoreGive(done);
    vTaskDelete(((void*)0));
}
