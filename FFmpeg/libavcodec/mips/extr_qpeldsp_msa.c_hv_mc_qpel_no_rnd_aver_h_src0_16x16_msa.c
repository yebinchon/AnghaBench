
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int hv_mc_qpel_no_rnd_horiz_src0_16x16_msa (int const*,int ,int *,int,int) ;
 int vert_mc_qpel_no_rnd_16x16_msa (int *,int,int *,int ) ;

__attribute__((used)) static void hv_mc_qpel_no_rnd_aver_h_src0_16x16_msa(const uint8_t *src,
                                                    int32_t src_stride,
                                                    uint8_t *dst,
                                                    int32_t dst_stride)
{
    uint8_t buff[272];

    hv_mc_qpel_no_rnd_horiz_src0_16x16_msa(src, src_stride, buff, 16, 16);
    vert_mc_qpel_no_rnd_16x16_msa(buff, 16, dst, dst_stride);
}
