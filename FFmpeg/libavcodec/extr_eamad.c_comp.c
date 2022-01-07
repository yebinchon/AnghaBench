
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 unsigned char av_clip_uint8 (unsigned char) ;

__attribute__((used)) static inline void comp(unsigned char *dst, ptrdiff_t dst_stride,
                        unsigned char *src, ptrdiff_t src_stride, int add)
{
    int j, i;
    for (j=0; j<8; j++)
        for (i=0; i<8; i++)
            dst[j*dst_stride + i] = av_clip_uint8(src[j*src_stride + i] + add);
}
