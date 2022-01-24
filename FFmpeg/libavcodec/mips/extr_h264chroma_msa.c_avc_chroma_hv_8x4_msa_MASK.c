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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * chroma_mask_arr ; 

__attribute__((used)) static void FUNC15(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coef_hor0, uint32_t coef_hor1,
                                  uint32_t coef_ver0, uint32_t coef_ver1)
{
    v16u8 src0, src1, src2, src3, src4, out0, out1;
    v8u16 res_hz0, res_hz1, res_hz2, res_hz3, res_hz4;
    v8u16 res_vt0, res_vt1, res_vt2, res_vt3;
    v16i8 mask;
    v16i8 coeff_hz_vec0 = FUNC11(coef_hor0);
    v16i8 coeff_hz_vec1 = FUNC11(coef_hor1);
    v16u8 coeff_hz_vec = (v16u8) FUNC13(coeff_hz_vec0, coeff_hz_vec1);
    v8u16 coeff_vt_vec0 = (v8u16) FUNC12(coef_ver0);
    v8u16 coeff_vt_vec1 = (v8u16) FUNC12(coef_ver1);

    mask = FUNC1(&chroma_mask_arr[32]);

    src0 = FUNC2(src);
    src += stride;

    src0 = (v16u8) FUNC14(mask, (v16i8) src0, (v16i8) src0);
    res_hz0 = FUNC10(src0, coeff_hz_vec);

    FUNC3(src, stride, src1, src2, src3, src4);
    src += (4 * stride);

    FUNC9(src1, src1, src2, src2, mask, mask, src1, src2);
    FUNC9(src3, src3, src4, src4, mask, mask, src3, src4);
    FUNC0(src1, src2, src3, src4, coeff_hz_vec, coeff_hz_vec,
                coeff_hz_vec, coeff_hz_vec, res_hz1, res_hz2, res_hz3, res_hz4);
    FUNC4(res_hz1, coeff_vt_vec0, res_hz2, coeff_vt_vec0, res_hz3, coeff_vt_vec0,
         res_hz4, coeff_vt_vec0, res_vt0, res_vt1, res_vt2, res_vt3);

    res_vt0 += (res_hz0 * coeff_vt_vec1);
    res_vt1 += (res_hz1 * coeff_vt_vec1);
    res_vt2 += (res_hz2 * coeff_vt_vec1);
    res_vt3 += (res_hz3 * coeff_vt_vec1);

    FUNC7(res_vt0, res_vt1, res_vt2, res_vt3, 6);
    FUNC6(res_vt0, res_vt1, res_vt2, res_vt3, 7);
    FUNC5(res_vt1, res_vt0, res_vt3, res_vt2, out0, out1);
    FUNC8(out0, out1, 0, 1, 0, 1, dst, stride);
}