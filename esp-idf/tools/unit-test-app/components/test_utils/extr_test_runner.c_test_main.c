
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNITY_FREERTOS_CPU ;
 int UNITY_FREERTOS_PRIORITY ;
 int UNITY_FREERTOS_STACK_SIZE ;
 int unity_task ;
 int xTaskCreatePinnedToCore (int ,char*,int ,int *,int ,int *,int ) ;

void test_main(void)
{


    xTaskCreatePinnedToCore(unity_task, "unityTask", UNITY_FREERTOS_STACK_SIZE, ((void*)0),
                            UNITY_FREERTOS_PRIORITY, ((void*)0), UNITY_FREERTOS_CPU);
}
