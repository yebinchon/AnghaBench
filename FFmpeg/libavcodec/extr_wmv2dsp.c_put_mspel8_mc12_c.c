
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int ptrdiff_t ;


 int ff_put_pixels8_l2_8 (int const*,int const*,int const*,int,int,int,int) ;
 int wmv2_mspel8_h_lowpass (int const*,int const*,int,int,int) ;
 int wmv2_mspel8_v_lowpass (int const*,int const*,int,int,int) ;

__attribute__((used)) static void put_mspel8_mc12_c(uint8_t *dst, const uint8_t *src, ptrdiff_t stride)
{
    uint8_t halfH[88];
    uint8_t halfV[64];
    uint8_t halfHV[64];

    wmv2_mspel8_h_lowpass(halfH, src - stride, 8, stride, 11);
    wmv2_mspel8_v_lowpass(halfV, src, 8, stride, 8);
    wmv2_mspel8_v_lowpass(halfHV, halfH + 8, 8, 8, 8);
    ff_put_pixels8_l2_8(dst, halfV, halfHV, stride, 8, 8, 8);
}
