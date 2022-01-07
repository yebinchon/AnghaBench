
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static void sum_delta_flipped(uint8_t *dst, int dst_linesize,
                              const uint8_t *src, int src_linesize,
                              int bytewidth, int height)
{
    int i;
    for (; height > 0; height--) {
        for (i = 0; i < bytewidth; i++)
            dst[i] += src[(height - 1) * src_linesize + i];
        dst += dst_linesize;
    }
}
