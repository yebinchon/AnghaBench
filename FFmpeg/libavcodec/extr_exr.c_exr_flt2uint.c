
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int int32_t ;



__attribute__((used)) static inline uint16_t exr_flt2uint(int32_t v)
{
    int32_t exp = v >> 23;


    if (exp <= 127 + 7 - 24)
        return 0;
    if (exp >= 127)
        return 0xffff;
    v &= 0x007fffff;
    return (v + (1 << 23)) >> (127 + 7 - exp);
}
