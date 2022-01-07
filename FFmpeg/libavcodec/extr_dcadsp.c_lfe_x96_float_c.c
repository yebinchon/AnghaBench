
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;



__attribute__((used)) static void lfe_x96_float_c(float *dst, const float *src,
                            float *hist, ptrdiff_t len)
{
    float prev = *hist;
    int i;

    for (i = 0; i < len; i++) {
        float a = 0.25f * src[i] + 0.75f * prev;
        float b = 0.75f * src[i] + 0.25f * prev;
        prev = src[i];
        *dst++ = a;
        *dst++ = b;
    }

    *hist = prev;
}
