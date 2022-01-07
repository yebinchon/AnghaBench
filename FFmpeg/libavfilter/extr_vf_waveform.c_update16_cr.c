
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static void update16_cr(uint16_t *target, int unused, int intensity, int limit)
{
    if (*target - intensity > 0)
        *target -= intensity;
    else
        *target = 0;
}
