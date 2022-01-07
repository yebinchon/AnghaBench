
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int AVC_LPF_H_2BYTE_CHROMA_422 (int *,int,int,scalar_t__,scalar_t__,scalar_t__) ;
 int SH (int ,int *) ;
 int __msa_copy_s_h (int ,int) ;
 scalar_t__ __msa_fill_b (int) ;

__attribute__((used)) static void avc_h_loop_filter_chroma422_mbaff_msa(uint8_t *src, int32_t stride,
                                                  int32_t alpha_in,
                                                  int32_t beta_in,
                                                  int8_t *tc0)
{
    int32_t col, tc_val;
    int16_t out0, out1;
    v16u8 alpha, beta, res;

    alpha = (v16u8) __msa_fill_b(alpha_in);
    beta = (v16u8) __msa_fill_b(beta_in);

    for (col = 0; col < 4; col++) {
        tc_val = (tc0[col] - 1) + 1;

        if (tc_val <= 0) {
            src += 4 * stride;
            continue;
        }

        AVC_LPF_H_2BYTE_CHROMA_422(src, stride, tc_val, alpha, beta, res);

        out0 = __msa_copy_s_h((v8i16) res, 0);
        out1 = __msa_copy_s_h((v8i16) res, 1);

        SH(out0, (src - 1));
        src += stride;
        SH(out1, (src - 1));
        src += stride;
    }
}
