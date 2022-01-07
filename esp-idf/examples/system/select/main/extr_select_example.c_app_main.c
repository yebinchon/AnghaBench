
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int portTICK_PERIOD_MS ;
 int select_task ;
 int socket_write_task ;
 int uart1_write_task ;
 int vTaskDelay (int) ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

void app_main(void)
{
    xTaskCreate(uart1_write_task, "uart1_write_task", 4*1024, ((void*)0), 5, ((void*)0));
    xTaskCreate(socket_write_task, "socket_write_task", 4*1024, ((void*)0), 5, ((void*)0));
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    xTaskCreate(select_task, "select_task", 4*1024, ((void*)0), 5, ((void*)0));
}
