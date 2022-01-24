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
typedef  scalar_t__ v8u16 ;
typedef  scalar_t__ v8i16 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/ * chroma_mask_arr ; 

__attribute__((used)) static void FUNC13(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coef_hor0, uint32_t coef_hor1,
                                  uint32_t coef_ver0, uint32_t coef_ver1)
{
    uint16_t out0, out1;
    v16u8 src0, src1, src2;
    v8u16 res_hz0, res_hz1, res_vt0, res_vt1;
    v8i16 res_vert;
    v16i8 mask;
    v16i8 coeff_hz_vec0 = FUNC7(coef_hor0);
    v16i8 coeff_hz_vec1 = FUNC7(coef_hor1);
    v16u8 coeff_hz_vec = (v16u8) FUNC9(coeff_hz_vec0, coeff_hz_vec1);
    v8u16 coeff_vt_vec0 = (v8u16) FUNC8(coef_ver0);
    v8u16 coeff_vt_vec1 = (v8u16) FUNC8(coef_ver1);

    mask = FUNC1(&chroma_mask_arr[48]);

    FUNC2(src, stride, src0, src1, src2);
    FUNC5(src0, src1, src1, src2, mask, mask, src0, src1);
    FUNC0(src0, src1, coeff_hz_vec, coeff_hz_vec, res_hz0, res_hz1);
    FUNC3(res_hz0, coeff_vt_vec1, res_hz1, coeff_vt_vec0, res_vt0, res_vt1);

    res_vt0 += res_vt1;
    res_vt0 = (v8u16) FUNC12((v8i16) res_vt0, 6);
    res_vt0 = FUNC11(res_vt0, 7);
    res_vert = (v8i16) FUNC10((v16i8) res_vt0, (v16i8) res_vt0);

    out0 = FUNC6(res_vert, 0);
    out1 = FUNC6(res_vert, 1);

    FUNC4(out0, dst);
    dst += stride;
    FUNC4(out1, dst);
}