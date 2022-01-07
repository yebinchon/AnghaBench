
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int pixel4 ;
typedef int pixel ;


 int AV_WN4PA (int *,int ) ;
 int PIXEL_SPLAT_X4 (int const) ;

__attribute__((used)) static void hor_8x8_c(uint8_t *_dst, ptrdiff_t stride,
                      const uint8_t *_left, const uint8_t *top)
{
    pixel *dst = (pixel *) _dst;
    const pixel *left = (const pixel *) _left;
    int y;

    stride /= sizeof(pixel);
    for (y = 0; y < 8; y++) {
        pixel4 p4 = PIXEL_SPLAT_X4(left[7 - y]);

        AV_WN4PA(dst + 0, p4);
        AV_WN4PA(dst + 4, p4);
        dst += stride;
    }
}
