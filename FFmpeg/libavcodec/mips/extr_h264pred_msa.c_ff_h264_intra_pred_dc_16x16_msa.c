
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef scalar_t__ v4u32 ;
typedef int v4i32 ;
typedef scalar_t__ v2u64 ;
typedef scalar_t__ v16u8 ;
typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef size_t ptrdiff_t ;


 scalar_t__ LD_UB (scalar_t__*) ;
 int ST_UB8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,size_t) ;
 int __msa_copy_u_w (int ,int ) ;
 scalar_t__ __msa_fill_b (int) ;
 scalar_t__ __msa_hadd_u_d (scalar_t__,scalar_t__) ;
 int __msa_hadd_u_h (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_hadd_u_w (int ,int ) ;
 scalar_t__ __msa_pckev_w (int ,int ) ;

void ff_h264_intra_pred_dc_16x16_msa(uint8_t *src, ptrdiff_t stride)
{
    uint8_t *src_top = src - stride;
    uint8_t *src_left = src - 1;
    uint8_t *dst = src;
    uint32_t addition = 0;
    v16u8 src_above, out;
    v8u16 sum_above;
    v4u32 sum_top;
    v2u64 sum;

    src_above = LD_UB(src_top);

    sum_above = __msa_hadd_u_h(src_above, src_above);
    sum_top = __msa_hadd_u_w(sum_above, sum_above);
    sum = __msa_hadd_u_d(sum_top, sum_top);
    sum_top = (v4u32) __msa_pckev_w((v4i32) sum, (v4i32) sum);
    sum = __msa_hadd_u_d(sum_top, sum_top);
    addition = __msa_copy_u_w((v4i32) sum, 0);
    addition += src_left[ 0 * stride];
    addition += src_left[ 1 * stride];
    addition += src_left[ 2 * stride];
    addition += src_left[ 3 * stride];
    addition += src_left[ 4 * stride];
    addition += src_left[ 5 * stride];
    addition += src_left[ 6 * stride];
    addition += src_left[ 7 * stride];
    addition += src_left[ 8 * stride];
    addition += src_left[ 9 * stride];
    addition += src_left[10 * stride];
    addition += src_left[11 * stride];
    addition += src_left[12 * stride];
    addition += src_left[13 * stride];
    addition += src_left[14 * stride];
    addition += src_left[15 * stride];
    addition = (addition + 16) >> 5;
    out = (v16u8) __msa_fill_b(addition);

    ST_UB8(out, out, out, out, out, out, out, out, dst, stride);
    dst += (8 * stride);
    ST_UB8(out, out, out, out, out, out, out, out, dst, stride);
}
