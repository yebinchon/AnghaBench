
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int pixel4 ;
typedef int pixel ;


 int AV_WN4PA (int*,int ) ;
 int PIXEL_SPLAT_X4 (int const) ;

__attribute__((used)) static void dc_4x4_c(uint8_t *_dst, ptrdiff_t stride,
                     const uint8_t *_left, const uint8_t *_top)
{
    pixel *dst = (pixel *) _dst;
    const pixel *left = (const pixel *) _left;
    const pixel *top = (const pixel *) _top;
    pixel4 dc = PIXEL_SPLAT_X4((left[0] + left[1] + left[2] + left[3] +
                                top[0] + top[1] + top[2] + top[3] + 4) >> 3);

    stride /= sizeof(pixel);
    AV_WN4PA(dst + stride * 0, dc);
    AV_WN4PA(dst + stride * 1, dc);
    AV_WN4PA(dst + stride * 2, dc);
    AV_WN4PA(dst + stride * 3, dc);
}
