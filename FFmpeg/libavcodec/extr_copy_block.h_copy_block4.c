
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int AV_COPY32U (int *,int const*) ;

__attribute__((used)) static inline void copy_block4(uint8_t *dst, const uint8_t *src, ptrdiff_t dstStride, ptrdiff_t srcStride, int h)
{
    int i;
    for (i = 0; i < h; i++) {
        AV_COPY32U(dst, src);
        dst += dstStride;
        src += srcStride;
    }
}
