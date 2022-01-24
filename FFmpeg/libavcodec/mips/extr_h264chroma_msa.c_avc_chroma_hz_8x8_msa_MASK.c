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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * chroma_mask_arr ; 

__attribute__((used)) static void FUNC11(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coeff0, uint32_t coeff1)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 out0, out1, out2, out3;
    v8u16 res0, res1, res2, res3, res4, res5, res6, res7;
    v16i8 mask;
    v16i8 coeff_vec0 = FUNC9(coeff0);
    v16i8 coeff_vec1 = FUNC9(coeff1);
    v16u8 coeff_vec = (v16u8) FUNC10(coeff_vec0, coeff_vec1);

    mask = FUNC1(&chroma_mask_arr[32]);

    FUNC2(src, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC8(src0, src0, src1, src1, mask, mask, src0, src1);
    FUNC8(src2, src2, src3, src3, mask, mask, src2, src3);
    FUNC8(src4, src4, src5, src5, mask, mask, src4, src5);
    FUNC8(src6, src6, src7, src7, mask, mask, src6, src7);
    FUNC0(src0, src1, src2, src3, coeff_vec, coeff_vec, coeff_vec,
                coeff_vec, res0, res1, res2, res3);
    FUNC0(src4, src5, src6, src7, coeff_vec, coeff_vec, coeff_vec,
                coeff_vec, res4, res5, res6, res7);
    FUNC5(res0, res1, res2, res3, 3);
    FUNC5(res4, res5, res6, res7, 3);
    FUNC6(res0, res1, res2, res3, 6);
    FUNC6(res4, res5, res6, res7, 6);
    FUNC4(res0, res1, res2, res3, 7);
    FUNC4(res4, res5, res6, res7, 7);
    FUNC3(res1, res0, res3, res2, out0, out1);
    FUNC3(res5, res4, res7, res6, out2, out3);
    FUNC7(out0, out1, out2, out3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}