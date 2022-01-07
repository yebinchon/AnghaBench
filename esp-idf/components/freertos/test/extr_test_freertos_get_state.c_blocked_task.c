
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int portMAX_DELAY ;
 int vTaskDelay (int ) ;

void blocked_task(void *arg)
{
    while(1){
        vTaskDelay(portMAX_DELAY);
    }
}
