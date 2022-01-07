
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int hevc_intra_pred_angular_lower_8width_msa (int const*,int const*,int *,int ,int) ;
 int hevc_intra_pred_angular_upper_8width_msa (int const*,int const*,int *,int ,int) ;
 int hevc_intra_pred_horiz_8x8_msa (int const*,int const*,int *,int ,int) ;
 int hevc_intra_pred_vert_8x8_msa (int const*,int const*,int *,int ,int) ;

void ff_pred_intra_pred_angular_1_msa(uint8_t *dst,
                                      const uint8_t *src_top,
                                      const uint8_t *src_left,
                                      ptrdiff_t stride, int c_idx, int mode)
{
    if (mode == 10) {
        hevc_intra_pred_horiz_8x8_msa(src_top, src_left, dst, stride, c_idx);
    } else if (mode == 26) {
        hevc_intra_pred_vert_8x8_msa(src_top, src_left, dst, stride, c_idx);
    } else if (mode >= 18) {
        hevc_intra_pred_angular_upper_8width_msa(src_top, src_left,
                                                 dst, stride, mode);
    } else {
        hevc_intra_pred_angular_lower_8width_msa(src_top, src_left,
                                                 dst, stride, mode);
    }
}
