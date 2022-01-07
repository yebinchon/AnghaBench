
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef size_t ptrdiff_t ;
typedef int MagicYUVContext ;



__attribute__((used)) static void left_predict(MagicYUVContext *s,
                         uint8_t *src, uint8_t *dst, ptrdiff_t stride,
                         int width, int height)
{
    uint8_t prev = 0;
    int i, j;

    for (i = 0; i < width; i++) {
        dst[i] = src[i] - prev;
        prev = src[i];
    }
    dst += width;
    src += stride;
    for (j = 1; j < height; j++) {
        prev = src[-stride];
        for (i = 0; i < width; i++) {
            dst[i] = src[i] - prev;
            prev = src[i];
        }
        dst += width;
        src += stride;
    }
}
