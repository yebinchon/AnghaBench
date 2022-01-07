
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spp_task_msg_t ;


 int spp_task_task_handle ;
 int spp_task_task_handler ;
 int spp_task_task_queue ;
 int xQueueCreate (int,int) ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

void spp_task_task_start_up(void)
{
    spp_task_task_queue = xQueueCreate(10, sizeof(spp_task_msg_t));
    xTaskCreate(spp_task_task_handler, "SPPAppT", 2048, ((void*)0), 10, &spp_task_task_handle);
    return;
}
