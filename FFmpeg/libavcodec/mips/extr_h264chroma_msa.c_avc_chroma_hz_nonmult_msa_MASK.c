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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * chroma_mask_arr ; 

__attribute__((used)) static void FUNC18(uint8_t *src, uint8_t *dst,
                                      int32_t stride, uint32_t coeff0,
                                      uint32_t coeff1, int32_t height)
{
    uint32_t row;
    v16u8 src0, src1, src2, src3, out0, out1;
    v8u16 res0, res1, res2, res3;
    v16i8 mask;
    v16i8 coeff_vec0 = FUNC12(coeff0);
    v16i8 coeff_vec1 = FUNC12(coeff1);
    v16u8 coeff_vec = (v16u8) FUNC13(coeff_vec0, coeff_vec1);

    mask = FUNC1(&chroma_mask_arr[32]);

    for (row = height >> 2; row--;) {
        FUNC3(src, stride, src0, src1, src2, src3);
        src += (4 * stride);

        FUNC10(src0, src0, src1, src1, mask, mask, src0, src1);
        FUNC10(src2, src2, src3, src3, mask, mask, src2, src3);
        FUNC0(src0, src1, src2, src3, coeff_vec, coeff_vec, coeff_vec,
                    coeff_vec, res0, res1, res2, res3);
        FUNC6(res0, res1, res2, res3, 3);
        FUNC7(res0, res1, res2, res3, 6);
        FUNC5(res0, res1, res2, res3, 7);
        FUNC4(res1, res0, res3, res2, out0, out1);
        FUNC9(out0, out1, 0, 1, 0, 1, dst, stride);
        dst += (4 * stride);
    }

    if (0 != (height % 4)) {
        for (row = (height % 4); row--;) {
            src0 = FUNC2(src);
            src += stride;

            src0 = (v16u8) FUNC17(mask, (v16i8) src0, (v16i8) src0);

            res0 = FUNC11(src0, coeff_vec);
            res0 <<= 3;
            res0 = (v8u16) FUNC16((v8i16) res0, 6);
            res0 = FUNC15(res0, 7);
            res0 = (v8u16) FUNC14((v16i8) res0, (v16i8) res0);

            FUNC8(res0, 0, dst);
            dst += stride;
        }
    }
}