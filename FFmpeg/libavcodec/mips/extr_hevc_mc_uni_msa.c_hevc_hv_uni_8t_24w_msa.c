
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;


 int hevc_hv_uni_8t_8multx2mult_msa (int *,int ,int *,int ,int const*,int const*,int ,int) ;

__attribute__((used)) static void hevc_hv_uni_8t_24w_msa(uint8_t *src,
                                   int32_t src_stride,
                                   uint8_t *dst,
                                   int32_t dst_stride,
                                   const int8_t *filter_x,
                                   const int8_t *filter_y,
                                   int32_t height)
{
    hevc_hv_uni_8t_8multx2mult_msa(src, src_stride, dst, dst_stride,
                                   filter_x, filter_y, height, 24);
}
