
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ v8i16 ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int int16_t ;


 int ADD2 (scalar_t__,scalar_t__ const,scalar_t__,scalar_t__ const,scalar_t__,scalar_t__) ;
 int CLIP_SH2_0_255 (scalar_t__,scalar_t__) ;
 int INSERT_W4_UB (int const,int const,int const,int const,TYPE_1__) ;
 int LW (int *) ;
 int ST_W4 (int ,int ,int,int,int,int *,int) ;
 int UNPCK_UB_SH (TYPE_1__,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_fill_h (int const) ;
 int __msa_pckev_b (int ,int ) ;

void ff_h264_idct4x4_addblk_dc_msa(uint8_t *dst, int16_t *src,
                                   int32_t dst_stride)
{
    v16u8 pred = { 0 };
    v16i8 out;
    v8i16 pred_r, pred_l;
    const uint32_t src0 = LW(dst);
    const uint32_t src1 = LW(dst + dst_stride);
    const uint32_t src2 = LW(dst + 2 * dst_stride);
    const uint32_t src3 = LW(dst + 3 * dst_stride);
    const int16_t dc = (src[0] + 32) >> 6;
    const v8i16 input_dc = __msa_fill_h(dc);

    src[0] = 0;
    INSERT_W4_UB(src0, src1, src2, src3, pred);
    UNPCK_UB_SH(pred, pred_r, pred_l);
    ADD2(pred_r, input_dc, pred_l, input_dc, pred_r, pred_l);
    CLIP_SH2_0_255(pred_r, pred_l);
    out = __msa_pckev_b((v16i8) pred_l, (v16i8) pred_r);
    ST_W4(out, 0, 1, 2, 3, dst, dst_stride);
}
