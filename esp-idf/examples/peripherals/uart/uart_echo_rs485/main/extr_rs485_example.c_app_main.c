
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECHO_TASK_PRIO ;
 int ECHO_TASK_STACK_SIZE ;
 int echo_task ;
 int xTaskCreate (int ,char*,int ,int *,int ,int *) ;

void app_main(void)
{

    xTaskCreate(echo_task, "uart_echo_task", ECHO_TASK_STACK_SIZE, ((void*)0), ECHO_TASK_PRIO, ((void*)0));
}
