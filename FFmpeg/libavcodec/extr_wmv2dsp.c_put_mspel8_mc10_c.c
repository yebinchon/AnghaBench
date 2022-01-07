
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ff_put_pixels8_l2_8 (int *,int const*,int *,int ,int ,int,int) ;
 int wmv2_mspel8_h_lowpass (int *,int const*,int,int ,int) ;

__attribute__((used)) static void put_mspel8_mc10_c(uint8_t *dst, const uint8_t *src, ptrdiff_t stride)
{
    uint8_t half[64];

    wmv2_mspel8_h_lowpass(half, src, 8, stride, 8);
    ff_put_pixels8_l2_8(dst, src, half, stride, stride, 8, 8);
}
