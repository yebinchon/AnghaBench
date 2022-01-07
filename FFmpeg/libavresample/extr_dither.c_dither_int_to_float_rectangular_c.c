
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LFG_SCALE ;

__attribute__((used)) static void dither_int_to_float_rectangular_c(float *dst, int *src, int len)
{
    int i;
    for (i = 0; i < len; i++)
        dst[i] = src[i] * LFG_SCALE;
}
