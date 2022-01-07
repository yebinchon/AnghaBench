
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * s_bt_app_task_handle ;
 int * s_bt_app_task_queue ;
 int vQueueDelete (int *) ;
 int vTaskDelete (int *) ;

void bt_app_task_shut_down(void)
{
    if (s_bt_app_task_handle) {
        vTaskDelete(s_bt_app_task_handle);
        s_bt_app_task_handle = ((void*)0);
    }
    if (s_bt_app_task_queue) {
        vQueueDelete(s_bt_app_task_queue);
        s_bt_app_task_queue = ((void*)0);
    }
}
