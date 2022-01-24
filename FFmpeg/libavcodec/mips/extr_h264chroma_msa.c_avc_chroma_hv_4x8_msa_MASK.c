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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * chroma_mask_arr ; 

__attribute__((used)) static void FUNC14(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coef_hor0, uint32_t coef_hor1,
                                  uint32_t coef_ver0, uint32_t coef_ver1)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8, res0, res1;
    v8u16 res_hz0, res_hz1, res_hz2, res_hz3, res_hz4, res_hz5, res_hz6, res_hz7;
    v8u16 res_vt0, res_vt1, res_vt2, res_vt3, res_vt4, res_vt5, res_vt6, res_vt7;
    v16i8 mask;
    v16i8 coeff_hz_vec0 = FUNC11(coef_hor0);
    v16i8 coeff_hz_vec1 = FUNC11(coef_hor1);
    v16u8 coeff_hz_vec = (v16u8) FUNC13(coeff_hz_vec0, coeff_hz_vec1);
    v8u16 coeff_vt_vec0 = (v8u16) FUNC12(coef_ver0);
    v8u16 coeff_vt_vec1 = (v8u16) FUNC12(coef_ver1);

    mask = FUNC2(&chroma_mask_arr[0]);

    FUNC4(src, stride, src0, src1, src2, src3, src4);
    src += (5 * stride);
    FUNC3(src, stride, src5, src6, src7, src8);

    FUNC10(src0, src1, src1, src2, mask, mask, src0, src1);
    FUNC10(src2, src3, src3, src4, mask, mask, src2, src3);
    FUNC10(src4, src5, src5, src6, mask, mask, src4, src5);
    FUNC10(src6, src7, src7, src8, mask, mask, src6, src7);
    FUNC1(src0, src1, src2, src3, coeff_hz_vec, coeff_hz_vec,
                coeff_hz_vec, coeff_hz_vec, res_hz0, res_hz1, res_hz2, res_hz3);
    FUNC1(src4, src5, src6, src7, coeff_hz_vec, coeff_hz_vec,
                coeff_hz_vec, coeff_hz_vec, res_hz4, res_hz5, res_hz6, res_hz7);
    FUNC5(res_hz0, coeff_vt_vec1, res_hz1, coeff_vt_vec0, res_hz2, coeff_vt_vec1,
         res_hz3, coeff_vt_vec0, res_vt0, res_vt1, res_vt2, res_vt3);
    FUNC5(res_hz4, coeff_vt_vec1, res_hz5, coeff_vt_vec0, res_hz6, coeff_vt_vec1,
         res_hz7, coeff_vt_vec0, res_vt4, res_vt5, res_vt6, res_vt7);
    FUNC0(res_vt0, res_vt1, res_vt2, res_vt3, res_vt0, res_vt1);
    FUNC0(res_vt4, res_vt5, res_vt6, res_vt7, res_vt2, res_vt3);
    FUNC8(res_vt0, res_vt1, res_vt2, res_vt3, 6);
    FUNC7(res_vt0, res_vt1, res_vt2, res_vt3, 7);
    FUNC6(res_vt1, res_vt0, res_vt3, res_vt2, res0, res1);
    FUNC9(res0, res1, 0, 1, 2, 3, 0, 1, 2, 3, dst, stride);
}