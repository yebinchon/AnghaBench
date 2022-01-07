
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16u8 ;
typedef int uint8_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int LD_SH (int*) ;
 int ST_SH (int,int*) ;
 scalar_t__ __msa_bmnz_v (int ,int ,int ) ;
 int __msa_ceqi_h (int,int ) ;
 int __msa_clti_s_h (int,int ) ;
 int __msa_fill_h (int) ;

__attribute__((used)) static void h263_dct_unquantize_msa(int16_t *block, int16_t qmul,
                                    int16_t qadd, int8_t n_coeffs,
                                    uint8_t loop_start)
{
    int16_t *block_dup = block;
    int32_t level, cnt;
    v8i16 block_vec, qmul_vec, qadd_vec, sub;
    v8i16 add, mask, mul, zero_mask;

    qmul_vec = __msa_fill_h(qmul);
    qadd_vec = __msa_fill_h(qadd);
    for (cnt = 0; cnt < (n_coeffs >> 3); cnt++) {
        block_vec = LD_SH(block_dup + loop_start);
        mask = __msa_clti_s_h(block_vec, 0);
        zero_mask = __msa_ceqi_h(block_vec, 0);
        mul = block_vec * qmul_vec;
        sub = mul - qadd_vec;
        add = mul + qadd_vec;
        add = (v8i16) __msa_bmnz_v((v16u8) add, (v16u8) sub, (v16u8) mask);
        block_vec = (v8i16) __msa_bmnz_v((v16u8) add, (v16u8) block_vec,
                                         (v16u8) zero_mask);
        ST_SH(block_vec, block_dup + loop_start);
        block_dup += 8;
    }

    cnt = ((n_coeffs >> 3) * 8) + loop_start;

    for (; cnt <= n_coeffs; cnt++) {
        level = block[cnt];
        if (level) {
            if (level < 0) {
                level = level * qmul - qadd;
            } else {
                level = level * qmul + qadd;
            }
            block[cnt] = level;
        }
    }
}
