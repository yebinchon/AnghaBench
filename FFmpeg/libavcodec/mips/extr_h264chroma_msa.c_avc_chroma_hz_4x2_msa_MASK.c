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
typedef  scalar_t__ v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * chroma_mask_arr ; 

__attribute__((used)) static void FUNC10(uint8_t *src, uint8_t *dst, int32_t stride,
                                  uint32_t coeff0, uint32_t coeff1)
{
    v16i8 src0, src1;
    v8u16 res_r;
    v4i32 res;
    v16i8 mask;
    v16i8 coeff_vec0 = FUNC4(coeff0);
    v16i8 coeff_vec1 = FUNC4(coeff1);
    v16u8 coeff_vec = (v16u8) FUNC5(coeff_vec0, coeff_vec1);

    mask = FUNC0(&chroma_mask_arr[0]);

    FUNC1(src, stride, src0, src1);

    src0 = FUNC9(mask, src1, src0);
    res_r = FUNC3((v16u8) src0, coeff_vec);
    res_r <<= 3;
    res_r = (v8u16) FUNC8((v8i16) res_r, 6);
    res_r = FUNC7(res_r, 7);
    res = (v4i32) FUNC6((v16i8) res_r, (v16i8) res_r);

    FUNC2(res, 0, 1, dst, stride);
}