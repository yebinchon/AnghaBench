
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * spp_task_task_handle ;
 int * spp_task_task_queue ;
 int vQueueDelete (int *) ;
 int vTaskDelete (int *) ;

void spp_task_task_shut_down(void)
{
    if (spp_task_task_handle) {
        vTaskDelete(spp_task_task_handle);
        spp_task_task_handle = ((void*)0);
    }
    if (spp_task_task_queue) {
        vQueueDelete(spp_task_task_queue);
        spp_task_task_queue = ((void*)0);
    }
}
