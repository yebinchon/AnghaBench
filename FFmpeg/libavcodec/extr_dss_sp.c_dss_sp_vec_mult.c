
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;



__attribute__((used)) static void dss_sp_vec_mult(const int32_t *src, int32_t *dst,
                            const int16_t *mult)
{
    int i;

    dst[0] = src[0];

    for (i = 1; i < 15; i++)
        dst[i] = (src[i] * mult[i] + 0x4000) >> 15;
}
