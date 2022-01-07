
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static void reorder_pixels_scalar(uint8_t *dst, const uint8_t *src, ptrdiff_t size)
{
    const uint8_t *t1 = src;
    int half_size = size / 2;
    const uint8_t *t2 = src + half_size;
    uint8_t *s = dst;
    int i;

    for (i = 0; i < half_size; i++) {
        *(s++) = *(t1++);
        *(s++) = *(t2++);
    }
}
