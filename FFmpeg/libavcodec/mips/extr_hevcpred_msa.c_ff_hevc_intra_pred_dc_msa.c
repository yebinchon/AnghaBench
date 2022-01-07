
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int hevc_intra_pred_dc_16x16_msa (int const*,int const*,int *,int ,int) ;
 int hevc_intra_pred_dc_32x32_msa (int const*,int const*,int *,int ) ;
 int hevc_intra_pred_dc_4x4_msa (int const*,int const*,int *,int ,int) ;
 int hevc_intra_pred_dc_8x8_msa (int const*,int const*,int *,int ,int) ;

void ff_hevc_intra_pred_dc_msa(uint8_t *dst, const uint8_t *src_top,
                               const uint8_t *src_left,
                               ptrdiff_t stride, int log2, int c_idx)
{
    switch (log2) {
    case 2:
        hevc_intra_pred_dc_4x4_msa(src_top, src_left, dst, stride, c_idx);
        break;

    case 3:
        hevc_intra_pred_dc_8x8_msa(src_top, src_left, dst, stride, c_idx);
        break;

    case 4:
        hevc_intra_pred_dc_16x16_msa(src_top, src_left, dst, stride, c_idx);
        break;

    case 5:
        hevc_intra_pred_dc_32x32_msa(src_top, src_left, dst, stride);
        break;
    }
}
