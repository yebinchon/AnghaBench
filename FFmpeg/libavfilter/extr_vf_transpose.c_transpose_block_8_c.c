
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static inline void transpose_block_8_c(uint8_t *src, ptrdiff_t src_linesize,
                                       uint8_t *dst, ptrdiff_t dst_linesize,
                                       int w, int h)
{
    int x, y;
    for (y = 0; y < h; y++, dst += dst_linesize, src++)
        for (x = 0; x < w; x++)
            dst[x] = src[x*src_linesize];
}
