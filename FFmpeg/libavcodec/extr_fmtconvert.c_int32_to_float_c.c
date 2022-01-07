
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;



__attribute__((used)) static void int32_to_float_c(float *dst, const int32_t *src, intptr_t len)
{
    int i;

    for (i = 0; i < len; i++)
        dst[i] = (float)src[i];
}
