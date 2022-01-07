
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32_t ;


 int portTICK_PERIOD_MS ;
 int vTaskDelay (int) ;

void k_sleep(s32_t duration)
{
    vTaskDelay(duration / portTICK_PERIOD_MS);
    return;
}
