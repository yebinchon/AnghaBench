
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unity_run_menu () ;
 int vTaskDelay (int) ;

__attribute__((used)) static void unity_task(void *pvParameters)
{
    vTaskDelay(2);
    unity_run_menu();
}
