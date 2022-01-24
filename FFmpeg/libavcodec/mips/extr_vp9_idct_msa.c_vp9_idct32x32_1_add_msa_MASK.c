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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VP9_DCT_CONST_BITS ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int cospi_16_64 ; 

__attribute__((used)) static void FUNC8(int16_t *input, uint8_t *dst,
                                    int32_t dst_stride)
{
    int32_t i;
    int16_t out;
    v16u8 dst0, dst1, dst2, dst3, tmp0, tmp1, tmp2, tmp3;
    v8i16 res0, res1, res2, res3, res4, res5, res6, res7, vec;

    out = FUNC4((input[0] * cospi_16_64), VP9_DCT_CONST_BITS);
    out = FUNC4((out * cospi_16_64), VP9_DCT_CONST_BITS);
    out = FUNC4(out, 6);
    input[0] = 0;

    vec = FUNC7(out);

    for (i = 16; i--;) {
        FUNC2(dst, 16, dst0, dst1);
        FUNC2(dst + dst_stride, 16, dst2, dst3);

        FUNC6(dst0, res0, res4);
        FUNC6(dst1, res1, res5);
        FUNC6(dst2, res2, res6);
        FUNC6(dst3, res3, res7);
        FUNC0(res0, vec, res1, vec, res2, vec, res3, vec, res0, res1, res2,
             res3);
        FUNC0(res4, vec, res5, vec, res6, vec, res7, vec, res4, res5, res6,
             res7);
        FUNC1(res0, res1, res2, res3, res4, res5, res6, res7);
        FUNC3(res4, res0, res5, res1, res6, res2, res7, res3,
                    tmp0, tmp1, tmp2, tmp3);

        FUNC5(tmp0, tmp1, dst, 16);
        dst += dst_stride;
        FUNC5(tmp2, tmp3, dst, 16);
        dst += dst_stride;
    }
}