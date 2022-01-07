
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int common_hz_8t_8x4_msa (int const*,int,int *,int,int const*) ;
 int common_hz_8t_8x8mult_msa (int const*,int,int *,int,int const*,int) ;

__attribute__((used)) static void common_hz_8t_8w_msa(const uint8_t *src, int32_t src_stride,
                                uint8_t *dst, int32_t dst_stride,
                                const int8_t *filter, int32_t height)
{
    if (4 == height) {
        common_hz_8t_8x4_msa(src, src_stride, dst, dst_stride, filter);
    } else {
        common_hz_8t_8x8mult_msa(src, src_stride, dst, dst_stride, filter,
                                 height);
    }
}
