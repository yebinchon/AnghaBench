
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int wmv2_mspel8_h_lowpass (int *,int const*,int ,int ,int) ;

__attribute__((used)) static void put_mspel8_mc20_c(uint8_t *dst, const uint8_t *src, ptrdiff_t stride)
{
    wmv2_mspel8_h_lowpass(dst, src, stride, stride, 8);
}
