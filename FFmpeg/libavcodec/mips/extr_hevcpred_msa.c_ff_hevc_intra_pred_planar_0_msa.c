
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int hevc_intra_pred_plane_4x4_msa (int const*,int const*,int *,int ) ;

void ff_hevc_intra_pred_planar_0_msa(uint8_t *dst,
                                     const uint8_t *src_top,
                                     const uint8_t *src_left,
                                     ptrdiff_t stride)
{
    hevc_intra_pred_plane_4x4_msa(src_top, src_left, dst, stride);
}
