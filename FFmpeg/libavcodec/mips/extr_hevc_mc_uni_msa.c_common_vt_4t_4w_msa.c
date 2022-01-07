
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int common_vt_4t_4x2_msa (int *,int,int *,int,int const*) ;
 int common_vt_4t_4x4multiple_msa (int *,int,int *,int,int const*,int) ;

__attribute__((used)) static void common_vt_4t_4w_msa(uint8_t *src, int32_t src_stride,
                                uint8_t *dst, int32_t dst_stride,
                                const int8_t *filter, int32_t height)
{
    if (2 == height) {
        common_vt_4t_4x2_msa(src, src_stride, dst, dst_stride, filter);
    } else {
        common_vt_4t_4x4multiple_msa(src, src_stride, dst, dst_stride, filter,
                                     height);
    }
}
