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
typedef  int v8u16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coeff0, uint32_t coeff1)
{
    v16u8 src0, src1, src2, src3, src4;
    v16u8 tmp0, tmp1, tmp2, tmp3;
    v16u8 out;
    v8u16 res0_r, res1_r;
    v16i8 coeff_vec0 = FUNC7(coeff0);
    v16i8 coeff_vec1 = FUNC7(coeff1);
    v16u8 coeff_vec = (v16u8) FUNC8(coeff_vec0, coeff_vec1);

    FUNC3(src, stride, src0, src1, src2, src3, src4);
    FUNC1(src1, src0, src2, src1, src3, src2, src4, src3, tmp0, tmp1, tmp2,
               tmp3);
    FUNC2(tmp1, tmp0, tmp3, tmp2, tmp0, tmp2);
    FUNC0(tmp0, tmp2, coeff_vec, coeff_vec, res0_r, res1_r);
    res0_r <<= 3;
    res1_r <<= 3;
    FUNC5(res0_r, res1_r, 6);
    FUNC4(res0_r, res1_r, 7);
    out = (v16u8) FUNC9((v16i8) res1_r, (v16i8) res0_r);
    FUNC6(out, 0, 1, 2, 3, dst, stride);
}