
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ST_UB8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int) ;
 scalar_t__ __msa_fill_b (int) ;

void ff_h264_intra_pred_dc_128_16x16_msa(uint8_t *src, ptrdiff_t stride)
{
    v16u8 out;

    out = (v16u8) __msa_fill_b(128);

    ST_UB8(out, out, out, out, out, out, out, out, src, stride);
    src += (8 * stride);
    ST_UB8(out, out, out, out, out, out, out, out, src, stride);
}
