
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_app_msg_t ;


 int bt_app_task_handler ;
 scalar_t__ configMAX_PRIORITIES ;
 int s_bt_app_task_handle ;
 int s_bt_app_task_queue ;
 int xQueueCreate (int,int) ;
 int xTaskCreate (int ,char*,int,int *,scalar_t__,int *) ;

void bt_app_task_start_up(void)
{
    s_bt_app_task_queue = xQueueCreate(10, sizeof(bt_app_msg_t));
    xTaskCreate(bt_app_task_handler, "BtAppT", 2048, ((void*)0), configMAX_PRIORITIES - 3, &s_bt_app_task_handle);
    return;
}
