
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blink_task ;
 int configMINIMAL_STACK_SIZE ;
 int xTaskCreate (int *,char*,int ,int *,int,int *) ;

void app_main(void)
{
    xTaskCreate(&blink_task, "blink_task", configMINIMAL_STACK_SIZE, ((void*)0), 5, ((void*)0));
}
