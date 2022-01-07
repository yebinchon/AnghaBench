
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vTaskSuspend (int *) ;

void suspended_task(void *arg)
{
    while(1){
        vTaskSuspend(((void*)0));
    }
}
