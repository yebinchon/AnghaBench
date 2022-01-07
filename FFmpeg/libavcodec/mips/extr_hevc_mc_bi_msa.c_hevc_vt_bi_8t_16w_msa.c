
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int hevc_vt_bi_8t_16multx2mult_msa (int *,int ,int *,int ,int *,int ,int const*,int ,int) ;

__attribute__((used)) static void hevc_vt_bi_8t_16w_msa(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    hevc_vt_bi_8t_16multx2mult_msa(src0_ptr, src_stride, src1_ptr, src2_stride,
                                   dst, dst_stride, filter, height, 16);
}
