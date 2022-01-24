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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * chroma_mask_arr ; 

__attribute__((used)) static void FUNC10(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coeff0, uint32_t coeff1)
{
    v16u8 src0, src1, src2, src3, out;
    v8u16 res0_r, res1_r;
    v16i8 mask;
    v16i8 coeff_vec0 = FUNC7(coeff0);
    v16i8 coeff_vec1 = FUNC7(coeff1);
    v16u8 coeff_vec = (v16u8) FUNC8(coeff_vec0, coeff_vec1);

    mask = FUNC1(&chroma_mask_arr[0]);

    FUNC2(src, stride, src0, src1, src2, src3);
    FUNC6(src0, src1, src2, src3, mask, mask, src0, src2);
    FUNC0(src0, src2, coeff_vec, coeff_vec, res0_r, res1_r);
    res0_r <<= 3;
    res1_r <<= 3;
    FUNC4(res0_r, res1_r, 6);
    FUNC3(res0_r, res1_r, 7);
    out = (v16u8) FUNC9((v16i8) res1_r, (v16i8) res0_r);
    FUNC5(out, 0, 1, 2, 3, dst, stride);
}