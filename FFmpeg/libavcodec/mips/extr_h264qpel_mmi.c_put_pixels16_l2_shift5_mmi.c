
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int put_pixels8_l2_shift5_mmi (int *,int *,int const*,int ,int ,int) ;

__attribute__((used)) static void put_pixels16_l2_shift5_mmi(uint8_t *dst, int16_t *src16,
        const uint8_t *src8, ptrdiff_t dstStride, ptrdiff_t src8Stride, int h)
{
    put_pixels8_l2_shift5_mmi(dst, src16, src8, dstStride, src8Stride, h);
    put_pixels8_l2_shift5_mmi(dst + 8, src16 + 8, src8 + 8, dstStride,
            src8Stride, h);
}
