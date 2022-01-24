#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int v8i16 ;
typedef  int v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  const int16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int,int) ; 

__attribute__((used)) static int32_t FUNC10(int16_t *block,
                                              int32_t qscale,
                                              const int16_t *quant_matrix)
{
    int32_t cnt, sum_res = -1;
    v8i16 block_vec, block_neg, qscale_vec, mask;
    v8i16 block_org0, block_org1, block_org2, block_org3;
    v8i16 quant_m0, quant_m1, quant_m2, quant_m3;
    v8i16 sum, mul, zero_mask;
    v4i32 mul_vec, qscale_l, qscale_r, quant_m_r, quant_m_l;
    v4i32 block_l, block_r, sad;

    qscale_vec = FUNC7(qscale);
    for (cnt = 0; cnt < 2; cnt++) {
        FUNC1(block, 8, block_org0, block_org1, block_org2, block_org3);
        FUNC1(quant_matrix, 8, quant_m0, quant_m1, quant_m2, quant_m3);
        mask = FUNC6(block_org0, 0);
        zero_mask = FUNC5(block_org0, 0);
        block_neg = -block_org0;
        block_vec = (v8i16) FUNC4((v16u8) block_org0, (v16u8) block_neg,
                                         (v16u8) mask);
        block_vec <<= 1;
        block_vec += 1;
        FUNC3(block_vec, block_r, block_l);
        FUNC3(qscale_vec, qscale_r, qscale_l);
        FUNC3(quant_m0, quant_m_r, quant_m_l);
        mul_vec = block_l * qscale_l;
        mul_vec *= quant_m_l;
        block_l = mul_vec >> 4;
        mul_vec = block_r * qscale_r;
        mul_vec *= quant_m_r;
        block_r = mul_vec >> 4;
        mul = (v8i16) FUNC9((v8i16) block_l, (v8i16) block_r);
        block_neg = - mul;
        sum = (v8i16) FUNC4((v16u8) mul, (v16u8) block_neg,
                                   (v16u8) mask);
        sum = (v8i16) FUNC4((v16u8) sum, (v16u8) block_org0,
                                   (v16u8) zero_mask);
        FUNC2(sum, block);
        block += 8;
        quant_matrix += 8;
        sad = FUNC8(sum, sum);
        sum_res += FUNC0(sad);
        mask = FUNC6(block_org1, 0);
        zero_mask = FUNC5(block_org1, 0);
        block_neg = - block_org1;
        block_vec = (v8i16) FUNC4((v16u8) block_org1, (v16u8) block_neg,
                                         (v16u8) mask);
        block_vec <<= 1;
        block_vec += 1;
        FUNC3(block_vec, block_r, block_l);
        FUNC3(qscale_vec, qscale_r, qscale_l);
        FUNC3(quant_m1, quant_m_r, quant_m_l);
        mul_vec = block_l * qscale_l;
        mul_vec *= quant_m_l;
        block_l = mul_vec >> 4;
        mul_vec = block_r * qscale_r;
        mul_vec *= quant_m_r;
        block_r = mul_vec >> 4;
        mul = FUNC9((v8i16) block_l, (v8i16) block_r);
        block_neg = - mul;
        sum = (v8i16) FUNC4((v16u8) mul, (v16u8) block_neg,
                                   (v16u8) mask);
        sum = (v8i16) FUNC4((v16u8) sum, (v16u8) block_org1,
                                   (v16u8) zero_mask);
        FUNC2(sum, block);

        block += 8;
        quant_matrix += 8;
        sad = FUNC8(sum, sum);
        sum_res += FUNC0(sad);
        mask = FUNC6(block_org2, 0);
        zero_mask = FUNC5(block_org2, 0);
        block_neg = - block_org2;
        block_vec = (v8i16) FUNC4((v16u8) block_org2, (v16u8) block_neg,
                                         (v16u8) mask);
        block_vec <<= 1;
        block_vec += 1;
        FUNC3(block_vec, block_r, block_l);
        FUNC3(qscale_vec, qscale_r, qscale_l);
        FUNC3(quant_m2, quant_m_r, quant_m_l);
        mul_vec = block_l * qscale_l;
        mul_vec *= quant_m_l;
        block_l = mul_vec >> 4;
        mul_vec = block_r * qscale_r;
        mul_vec *= quant_m_r;
        block_r = mul_vec >> 4;
        mul = FUNC9((v8i16) block_l, (v8i16) block_r);
        block_neg = - mul;
        sum = (v8i16) FUNC4((v16u8) mul, (v16u8) block_neg,
                                   (v16u8) mask);
        sum = (v8i16) FUNC4((v16u8) sum, (v16u8) block_org2,
                                   (v16u8) zero_mask);
        FUNC2(sum, block);

        block += 8;
        quant_matrix += 8;
        sad = FUNC8(sum, sum);
        sum_res += FUNC0(sad);
        mask = FUNC6(block_org3, 0);
        zero_mask = FUNC5(block_org3, 0);
        block_neg = - block_org3;
        block_vec = (v8i16) FUNC4((v16u8) block_org3, (v16u8) block_neg,
                                         (v16u8) mask);
        block_vec <<= 1;
        block_vec += 1;
        FUNC3(block_vec, block_r, block_l);
        FUNC3(qscale_vec, qscale_r, qscale_l);
        FUNC3(quant_m3, quant_m_r, quant_m_l);
        mul_vec = block_l * qscale_l;
        mul_vec *= quant_m_l;
        block_l = mul_vec >> 4;
        mul_vec = block_r * qscale_r;
        mul_vec *= quant_m_r;
        block_r = mul_vec >> 4;
        mul = FUNC9((v8i16) block_l, (v8i16) block_r);
        block_neg = - mul;
        sum = (v8i16) FUNC4((v16u8) mul, (v16u8) block_neg,
                                   (v16u8) mask);
        sum = (v8i16) FUNC4((v16u8) sum, (v16u8) block_org3,
                                   (v16u8) zero_mask);
        FUNC2(sum, block);

        block += 8;
        quant_matrix += 8;
        sad = FUNC8(sum, sum);
        sum_res += FUNC0(sad);
    }

    return sum_res;
}