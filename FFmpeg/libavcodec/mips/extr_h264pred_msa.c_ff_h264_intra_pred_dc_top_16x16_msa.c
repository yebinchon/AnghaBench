
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8u16 ;
typedef scalar_t__ v4u32 ;
typedef int v4i32 ;
typedef scalar_t__ v2u64 ;
typedef int v2i64 ;
typedef scalar_t__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int ptrdiff_t ;


 scalar_t__ LD_UB (int *) ;
 int ST_UB8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int) ;
 scalar_t__ __msa_hadd_u_d (scalar_t__,scalar_t__) ;
 int __msa_hadd_u_h (scalar_t__,scalar_t__) ;
 scalar_t__ __msa_hadd_u_w (int ,int ) ;
 scalar_t__ __msa_pckev_w (int ,int ) ;
 scalar_t__ __msa_splati_b (int ,int ) ;
 scalar_t__ __msa_srari_d (int ,int) ;

void ff_h264_intra_pred_dc_top_16x16_msa(uint8_t *src, ptrdiff_t stride)
{
    uint8_t *src_top = src - stride;
    uint8_t *dst = src;
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
    sum = (v2u64) __msa_srari_d((v2i64) sum, 4);
    out = (v16u8) __msa_splati_b((v16i8) sum, 0);

    ST_UB8(out, out, out, out, out, out, out, out, dst, stride);
    dst += (8 * stride);
    ST_UB8(out, out, out, out, out, out, out, out, dst, stride);
}
