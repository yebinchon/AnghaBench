
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int * g_random_numbers ;
 int g_random_numbers_cnt ;

uint32_t esp_random(void)
{

    return g_random_numbers[g_random_numbers_cnt++ % 8];
}
