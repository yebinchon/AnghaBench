
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int pixel4 ;
typedef int pixel ;


 int AV_RN4PA (int const*) ;
 int AV_WN4PA (int *,int ) ;

__attribute__((used)) static void vert_16x16_c(uint8_t *_dst, ptrdiff_t stride,
                         const uint8_t *left, const uint8_t *_top)
{
    pixel *dst = (pixel *) _dst;
    const pixel *top = (const pixel *) _top;
    pixel4 p4a = AV_RN4PA(top + 0);
    pixel4 p4b = AV_RN4PA(top + 4);
    pixel4 p4c = AV_RN4PA(top + 8);
    pixel4 p4d = AV_RN4PA(top + 12);
    int y;

    stride /= sizeof(pixel);
    for (y = 0; y < 16; y++) {
        AV_WN4PA(dst + 0, p4a);
        AV_WN4PA(dst + 4, p4b);
        AV_WN4PA(dst + 8, p4c);
        AV_WN4PA(dst + 12, p4d);
        dst += stride;
    }
}
