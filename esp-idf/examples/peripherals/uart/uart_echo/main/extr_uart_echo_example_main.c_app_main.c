
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int echo_task ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

void app_main(void)
{
    xTaskCreate(echo_task, "uart_echo_task", 1024, ((void*)0), 10, ((void*)0));
}
