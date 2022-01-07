
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ff_avg_pixels8_l2_8_mmi (int *,int const*,int const*,int,int,int,int) ;

inline void ff_avg_pixels16_l2_8_mmi(uint8_t *dst, const uint8_t *src1,
    const uint8_t *src2, int dst_stride, int src_stride1, int src_stride2,
    int h)
{
    ff_avg_pixels8_l2_8_mmi(dst, src1, src2, dst_stride, src_stride1,
            src_stride2, h);
    ff_avg_pixels8_l2_8_mmi(dst + 8, src1 + 8, src2 + 8, dst_stride,
            src_stride1, src_stride2, h);
}
