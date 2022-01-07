
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vTaskDelay (int ) ;

int sched_yield( void )
{
    vTaskDelay(0);
    return 0;
}
