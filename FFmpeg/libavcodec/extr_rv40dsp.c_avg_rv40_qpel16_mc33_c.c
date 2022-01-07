
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int avg_pixels16_xy2_8_c (int *,int const*,int ,int) ;

__attribute__((used)) static void avg_rv40_qpel16_mc33_c(uint8_t *dst, const uint8_t *src, ptrdiff_t stride)
{
    avg_pixels16_xy2_8_c(dst, src, stride, 16);
}
