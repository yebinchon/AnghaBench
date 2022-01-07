
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulg ;



__attribute__((used)) static int rpng_x_msb(ulg u32val)
{
    int i;

    for (i = 31; i >= 0; --i) {
        if (u32val & 0x80000000L)
            break;
        u32val <<= 1;
    }
    return i;
}
