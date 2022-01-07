
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void update_cr(uint8_t *target, int unused, int intensity)
{
    if (*target - intensity > 0)
        *target -= intensity;
    else
        *target = 0;
}
