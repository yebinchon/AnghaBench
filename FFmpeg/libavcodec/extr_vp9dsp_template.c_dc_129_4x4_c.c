
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int pixel4 ;
typedef int pixel ;


 int AV_WN4PA (int *,int ) ;
 int BIT_DEPTH ;
 int PIXEL_SPLAT_X4 (int) ;

__attribute__((used)) static void dc_129_4x4_c(uint8_t *_dst, ptrdiff_t stride,
                         const uint8_t *left, const uint8_t *top)
{
    pixel *dst = (pixel *) _dst;
    pixel4 val = PIXEL_SPLAT_X4((128 << (BIT_DEPTH - 8)) + 1);

    stride /= sizeof(pixel);
    AV_WN4PA(dst + stride * 0, val);
    AV_WN4PA(dst + stride * 1, val);
    AV_WN4PA(dst + stride * 2, val);
    AV_WN4PA(dst + stride * 3, val);
}
