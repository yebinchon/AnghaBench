
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNITY_FREERTOS_CPU ;
 scalar_t__ UNITY_FREERTOS_PRIORITY ;
 int apb_access_corrupt ;
 int apb_access_loop_task ;
 int apb_task_handle ;
 int xTaskCreatePinnedToCore (int ,char*,int,int *,scalar_t__,int *,int) ;

void start_apb_access_loop(void)
{
    apb_access_corrupt = 0;
    xTaskCreatePinnedToCore(apb_access_loop_task, "accessAPB", 2048, ((void*)0),
                            UNITY_FREERTOS_PRIORITY - 1,
                            &apb_task_handle, !UNITY_FREERTOS_CPU);
}
