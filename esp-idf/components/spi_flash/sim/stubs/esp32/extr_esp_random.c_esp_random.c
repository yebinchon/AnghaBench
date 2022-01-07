
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int rand () ;

uint32_t esp_random(void)
{
    return (uint32_t)rand();
}
