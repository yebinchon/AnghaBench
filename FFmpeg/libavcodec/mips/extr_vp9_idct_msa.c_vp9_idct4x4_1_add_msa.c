
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int ADDBLK_ST4x4_UB (int ,int ,int ,int ,int *,int ) ;
 int ROUND_POWER_OF_TWO (int,int) ;
 int VP9_DCT_CONST_BITS ;
 int __msa_fill_h (int) ;
 int cospi_16_64 ;

__attribute__((used)) static void vp9_idct4x4_1_add_msa(int16_t *input, uint8_t *dst,
                                  int32_t dst_stride)
{
    int16_t out;
    v8i16 vec;

    out = ROUND_POWER_OF_TWO((input[0] * cospi_16_64), VP9_DCT_CONST_BITS);
    out = ROUND_POWER_OF_TWO((out * cospi_16_64), VP9_DCT_CONST_BITS);
    out = ROUND_POWER_OF_TWO(out, 4);
    vec = __msa_fill_h(out);
    input[0] = 0;

    ADDBLK_ST4x4_UB(vec, vec, vec, vec, dst, dst_stride);
}
