
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

__attribute__((used)) static void vert_4x4_c(uint8_t *_dst, ptrdiff_t stride,
                       const uint8_t *left, const uint8_t *_top)
{
    pixel *dst = (pixel *) _dst;
    const pixel *top = (const pixel *) _top;
    pixel4 p4 = AV_RN4PA(top);

    stride /= sizeof(pixel);
    AV_WN4PA(dst + stride * 0, p4);
    AV_WN4PA(dst + stride * 1, p4);
    AV_WN4PA(dst + stride * 2, p4);
    AV_WN4PA(dst + stride * 3, p4);
}
