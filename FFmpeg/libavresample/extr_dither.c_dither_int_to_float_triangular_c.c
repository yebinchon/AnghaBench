
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LFG_SCALE ;

__attribute__((used)) static void dither_int_to_float_triangular_c(float *dst, int *src0, int len)
{
    int i;
    int *src1 = src0 + len;

    for (i = 0; i < len; i++) {
        float r = src0[i] * LFG_SCALE;
        r += src1[i] * LFG_SCALE;
        dst[i] = r;
    }
}
