
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t ptrdiff_t ;
typedef int MagicYUVContext ;



__attribute__((used)) static void gradient_predict(MagicYUVContext *s,
                             uint8_t *src, uint8_t *dst, ptrdiff_t stride,
                             int width, int height)
{
    int left = 0, top, lefttop;
    int i, j;

    for (i = 0; i < width; i++) {
        dst[i] = src[i] - left;
        left = src[i];
    }
    dst += width;
    src += stride;
    for (j = 1; j < height; j++) {
        top = src[-stride];
        left = src[0] - top;
        dst[0] = left;
        for (i = 1; i < width; i++) {
            top = src[i - stride];
            lefttop = src[i - (stride + 1)];
            left = src[i-1];
            dst[i] = (src[i] - top) - left + lefttop;
        }
        dst += width;
        src += stride;
    }
}
