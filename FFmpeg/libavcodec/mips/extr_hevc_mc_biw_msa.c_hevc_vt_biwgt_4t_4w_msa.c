
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int hevc_vt_biwgt_4t_4x2_msa (int *,int,int *,int,int *,int,int const*,int,int,int,int,int) ;
 int hevc_vt_biwgt_4t_4x4_msa (int *,int,int *,int,int *,int,int const*,int,int,int,int,int) ;
 int hevc_vt_biwgt_4t_4x8multiple_msa (int *,int,int *,int,int *,int,int const*,int,int,int,int,int,int) ;

__attribute__((used)) static void hevc_vt_biwgt_4t_4w_msa(uint8_t *src0_ptr,
                                    int32_t src_stride,
                                    int16_t *src1_ptr,
                                    int32_t src2_stride,
                                    uint8_t *dst,
                                    int32_t dst_stride,
                                    const int8_t *filter,
                                    int32_t height,
                                    int32_t weight0,
                                    int32_t weight1,
                                    int32_t offset0,
                                    int32_t offset1,
                                    int32_t rnd_val)
{
    if (2 == height) {
        hevc_vt_biwgt_4t_4x2_msa(src0_ptr, src_stride, src1_ptr, src2_stride,
                                 dst, dst_stride, filter,
                                 weight0, weight1, offset0, offset1, rnd_val);
    } else if (4 == height) {
        hevc_vt_biwgt_4t_4x4_msa(src0_ptr, src_stride, src1_ptr, src2_stride,
                                 dst, dst_stride, filter,
                                 weight0, weight1, offset0, offset1, rnd_val);
    } else if (0 == (height % 8)) {
        hevc_vt_biwgt_4t_4x8multiple_msa(src0_ptr, src_stride,
                                         src1_ptr, src2_stride,
                                         dst, dst_stride, filter, height,
                                         weight0, weight1, offset0, offset1,
                                         rnd_val);
    }
}
