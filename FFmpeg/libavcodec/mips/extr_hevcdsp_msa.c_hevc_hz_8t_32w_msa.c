
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef scalar_t__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int DPADD_SB4_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int) ;
 scalar_t__ LD_SB (int *) ;
 int LD_SB2 (int *,int,scalar_t__,scalar_t__) ;
 int LD_SH (int const*) ;
 int SPLATI_H4_SH (int,int ,int,int,int,int,int,int,int) ;
 int ST_SH4 (int,int,int,int,int *,int) ;
 int VSHF_B4_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XORI_B3_128_SB (scalar_t__,scalar_t__,scalar_t__) ;
 int __msa_ldi_h (int) ;
 int * ff_hevc_mask_arr ;

__attribute__((used)) static void hevc_hz_8t_32w_msa(uint8_t *src, int32_t src_stride,
                               int16_t *dst, int32_t dst_stride,
                               const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2;
    v8i16 filt0, filt1, filt2, filt3;
    v16i8 mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v16i8 vec0, vec1, vec2, vec3;
    v8i16 dst0, dst1, dst2, dst3;
    v8i16 filter_vec, const_vec;
    v16i8 mask0 = LD_SB(ff_hevc_mask_arr);

    src -= 3;
    filter_vec = LD_SH(filter);
    SPLATI_H4_SH(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = mask0 + 8;
    mask5 = mask0 + 10;
    mask6 = mask0 + 12;
    mask7 = mask0 + 14;

    const_vec = __msa_ldi_h(128);
    const_vec <<= 6;

    for (loop_cnt = height; loop_cnt--;) {
        LD_SB2(src, 16, src0, src1);
        src2 = LD_SB(src + 24);
        src += src_stride;
        XORI_B3_128_SB(src0, src1, src2);

        VSHF_B4_SB(src0, src0, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        dst0 = const_vec;
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2, filt3,
                     dst0, dst0, dst0, dst0);
        VSHF_B4_SB(src0, src1, mask4, mask5, mask6, mask7,
                   vec0, vec1, vec2, vec3);
        dst1 = const_vec;
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2, filt3,
                     dst1, dst1, dst1, dst1);
        VSHF_B4_SB(src1, src1, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        dst2 = const_vec;
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2, filt3,
                     dst2, dst2, dst2, dst2);
        VSHF_B4_SB(src2, src2, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        dst3 = const_vec;
        DPADD_SB4_SH(vec0, vec1, vec2, vec3, filt0, filt1, filt2, filt3,
                     dst3, dst3, dst3, dst3);

        ST_SH4(dst0, dst1, dst2, dst3, dst, 8);
        dst += dst_stride;
    }
}
