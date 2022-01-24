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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC13(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              const int8_t *filter)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask;
    v16u8 filt0, vec0, vec1, vec2, vec3, res0, res1, res2, res3;
    v16u8 dst0, dst1;
    v8u16 vec4, vec5, vec6, vec7, filt;

    mask = FUNC4(&mc_filt_mask_arr[16]);

    /* rearranging filter */
    filt = FUNC6(filter);
    filt0 = (v16u8) FUNC12((v8i16) filt, 0);

    FUNC5(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC7(dst, dst_stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, tp2, tp3, dst0);
    FUNC7(dst + 4 * dst_stride, dst_stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, tp2, tp3, dst1);
    FUNC11(src0, src1, src2, src3, mask, mask, vec0, vec1);
    FUNC11(src4, src5, src6, src7, mask, mask, vec2, vec3);
    FUNC1(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, vec4, vec5,
                vec6, vec7);
    FUNC9(vec4, vec5, vec6, vec7, 7);
    FUNC8(vec4, vec4, vec5, vec5, vec6, vec6, vec7, vec7, res0, res1,
                res2, res3);
    FUNC2(res1, res0, res3, res2, res0, res2);
    FUNC0(res0, dst0, res2, dst1, res0, res2);
    FUNC10(res0, res2, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
}