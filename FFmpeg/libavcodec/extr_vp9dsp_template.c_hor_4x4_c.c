
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int pixel ;


 int AV_WN4PA (int *,int ) ;
 int PIXEL_SPLAT_X4 (int const) ;

__attribute__((used)) static void hor_4x4_c(uint8_t *_dst, ptrdiff_t stride,
                      const uint8_t *_left, const uint8_t *top)
{
    pixel *dst = (pixel *) _dst;
    const pixel *left = (const pixel *) _left;

    stride /= sizeof(pixel);
    AV_WN4PA(dst + stride * 0, PIXEL_SPLAT_X4(left[3]));
    AV_WN4PA(dst + stride * 1, PIXEL_SPLAT_X4(left[2]));
    AV_WN4PA(dst + stride * 2, PIXEL_SPLAT_X4(left[1]));
    AV_WN4PA(dst + stride * 3, PIXEL_SPLAT_X4(left[0]));
}
