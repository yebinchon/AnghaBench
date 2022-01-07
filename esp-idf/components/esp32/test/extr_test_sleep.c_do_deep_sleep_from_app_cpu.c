
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deep_sleep_task ;
 int vTaskSuspendAll () ;
 int xTaskCreatePinnedToCore (int *,char*,int,int *,int,int *,int) ;

__attribute__((used)) static void do_deep_sleep_from_app_cpu(void)
{
    xTaskCreatePinnedToCore(&deep_sleep_task, "ds", 2048, ((void*)0), 5, ((void*)0), 1);


    vTaskSuspendAll();

    while (1) {
        ;
    }
}
