
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 void* cmd_cmd_queue ;
 void* cmd_heartbeat_queue ;
 int spp_cmd_task ;
 int spp_heartbeat_task ;
 int spp_uart_init () ;
 void* xQueueCreate (int,int) ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

__attribute__((used)) static void spp_task_init(void)
{
    spp_uart_init();






    cmd_cmd_queue = xQueueCreate(10, sizeof(uint32_t));
    xTaskCreate(spp_cmd_task, "spp_cmd_task", 2048, ((void*)0), 10, ((void*)0));
}
