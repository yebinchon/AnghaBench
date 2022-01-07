
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int process_intra_lower_16x16_msa (int const*,int const*,int *,int,int) ;
 int process_intra_upper_16x16_msa (int const*,int const*,int *,int,int) ;

__attribute__((used)) static void hevc_intra_pred_plane_32x32_msa(const uint8_t *src_top,
                                            const uint8_t *src_left,
                                            uint8_t *dst, int32_t stride)
{
    process_intra_upper_16x16_msa(src_top, src_left, dst, stride, 0);
    process_intra_upper_16x16_msa((src_top + 16), src_left,
                                  (dst + 16), stride, 16);
    dst += (16 * stride);
    src_left += 16;

    process_intra_lower_16x16_msa(src_top, src_left, dst, stride, 0);
    process_intra_lower_16x16_msa((src_top + 16), src_left,
                                  (dst + 16), stride, 16);
}
