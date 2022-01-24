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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC9(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter)
{
    v16u8 vec0, vec1, vec2, vec3, filt0;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask;
    v16i8 res0, res1, res2, res3;
    v8u16 vec4, vec5, vec6, vec7, filt;

    mask = FUNC1(&mc_filt_mask_arr[16]);

    /* rearranging filter */
    filt = FUNC3(filter);
    filt0 = (v16u8) FUNC8((v8i16) filt, 0);

    FUNC2(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC7(src0, src1, src2, src3, mask, mask, vec0, vec1);
    FUNC7(src4, src5, src6, src7, mask, mask, vec2, vec3);
    FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0,
                vec4, vec5, vec6, vec7);
    FUNC5(vec4, vec5, vec6, vec7, 7);
    FUNC4(vec4, vec4, vec5, vec5, vec6, vec6, vec7, vec7,
                res0, res1, res2, res3);
    FUNC6(res0, 0, 1, dst, dst_stride);
    FUNC6(res1, 0, 1, dst + 2 * dst_stride, dst_stride);
    FUNC6(res2, 0, 1, dst + 4 * dst_stride, dst_stride);
    FUNC6(res3, 0, 1, dst + 6 * dst_stride, dst_stride);
}