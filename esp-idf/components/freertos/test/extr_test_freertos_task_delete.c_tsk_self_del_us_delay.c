
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ets_delay_us (int ) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void tsk_self_del_us_delay(void *param)
{
    uint32_t delay = (uint32_t)param;
    ets_delay_us(delay);
    vTaskDelete(((void*)0));
}
