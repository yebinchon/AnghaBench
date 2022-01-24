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
typedef  int /*<<< orphan*/  v8u16 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coeff0, uint32_t coeff1)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16u8 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, out0, out1;
    v8u16 res0, res1, res2, res3;
    v16i8 coeff_vec0 = FUNC10(coeff0);
    v16i8 coeff_vec1 = FUNC10(coeff1);
    v16u8 coeff_vec = (v16u8) FUNC11(coeff_vec0, coeff_vec1);

    FUNC4(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);
    FUNC3(src, stride, src5, src6, src7, src8);
    FUNC1(src1, src0, src2, src1, src3, src2, src4, src3, tmp0, tmp1, tmp2,
               tmp3);
    FUNC1(src5, src4, src6, src5, src7, src6, src8, src7, tmp4, tmp5, tmp6,
               tmp7);
    FUNC2(tmp1, tmp0, tmp3, tmp2, tmp0, tmp2);
    FUNC2(tmp5, tmp4, tmp7, tmp6, tmp4, tmp6);
    FUNC0(tmp0, tmp2, coeff_vec, coeff_vec, res0, res1);
    FUNC0(tmp4, tmp6, coeff_vec, coeff_vec, res2, res3);
    FUNC7(res0, res1, res2, res3, 3);
    FUNC8(res0, res1, res2, res3, 6);
    FUNC6(res0, res1, res2, res3, 7);
    FUNC5(res1, res0, res3, res2, out0, out1);
    FUNC9(out0, out1, 0, 1, 2, 3, 0, 1, 2, 3, dst, stride);
}