
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uart_select_task ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

void app_main(void)
{
    xTaskCreate(uart_select_task, "uart_select_task", 4*1024, ((void*)0), 5, ((void*)0));
}
