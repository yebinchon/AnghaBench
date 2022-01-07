
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int avc_chroma_hv_and_aver_dst_2x2_msa (int *,int *,int,int ,int ,int ,int ) ;
 int avc_chroma_hv_and_aver_dst_2x4_msa (int *,int *,int,int ,int ,int ,int ) ;

__attribute__((used)) static void avc_chroma_hv_and_aver_dst_2w_msa(uint8_t *src, uint8_t *dst,
                                              int32_t stride,
                                              uint32_t coef_hor0,
                                              uint32_t coef_hor1,
                                              uint32_t coef_ver0,
                                              uint32_t coef_ver1,
                                              int32_t height)
{
    if (2 == height) {
        avc_chroma_hv_and_aver_dst_2x2_msa(src, dst, stride, coef_hor0,
                                           coef_hor1, coef_ver0, coef_ver1);
    } else if (4 == height) {
        avc_chroma_hv_and_aver_dst_2x4_msa(src, dst, stride, coef_hor0,
                                           coef_hor1, coef_ver0, coef_ver1);
    }
}
