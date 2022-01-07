
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static void shrink88(uint8_t *dst, int dst_wrap,
                     const uint8_t *src, int src_wrap,
                     int width, int height)
{
    int w, i;

    for (; height > 0; height--) {
        for(w = width;w > 0; w--) {
            int tmp = 0;
            for (i = 0; i < 8; i++) {
                tmp += src[0] + src[1] + src[2] + src[3] +
                       src[4] + src[5] + src[6] + src[7];
                src += src_wrap;
            }
            *(dst++) = (tmp + 32) >> 6;
            src += 8 - 8 * src_wrap;
        }
        src += 8 * src_wrap - 8 * width;
        dst += dst_wrap - width;
    }
}
