
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static int add_left_pred_c(uint8_t *dst, const uint8_t *src, ptrdiff_t w,
                           int acc)
{
    int i;

    for (i = 0; i < w - 1; i++) {
        acc += src[i];
        dst[i] = acc;
        i++;
        acc += src[i];
        dst[i] = acc;
    }

    for (; i < w; i++) {
        acc += src[i];
        dst[i] = acc;
    }

    return acc;
}
