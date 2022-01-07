
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;



__attribute__((used)) static int32_t div_w32_w16(int32_t num, int16_t den)
{
    if (den != 0)
        return num / den;
    else
        return 0x7FFFFFFF;
}
