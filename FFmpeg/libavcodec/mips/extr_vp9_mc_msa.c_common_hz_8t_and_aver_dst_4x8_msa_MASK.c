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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC15(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              const int8_t *filter)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16i8 src0, src1, src2, src3, filt0, filt1, filt2, filt3;
    v16u8 mask0, mask1, mask2, mask3, res0, res1, res2, res3;
    v16u8 dst0, dst1;
    v8i16 filt, vec0, vec1, vec2, vec3;

    mask0 = FUNC6(&mc_filt_mask_arr[16]);
    src -= 3;

    /* rearranging filter */
    filt = FUNC5(filter);
    FUNC10(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    FUNC4(src, src_stride, src0, src1, src2, src3);
    FUNC14(src0, src1, src2, src3);
    src += (4 * src_stride);
    FUNC7(dst, dst_stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, tp2, tp3, dst0);
    FUNC7(dst + 4 * dst_stride, dst_stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, tp2, tp3, dst1);
    FUNC1(src0, src1, src2, src3, mask0, mask1, mask2,
                               mask3, filt0, filt1, filt2, filt3, vec0, vec1);
    FUNC4(src, src_stride, src0, src1, src2, src3);
    FUNC14(src0, src1, src2, src3);
    FUNC1(src0, src1, src2, src3, mask0, mask1, mask2,
                               mask3, filt0, filt1, filt2, filt3, vec2, vec3);
    FUNC11(vec0, vec1, vec2, vec3, 7);
    FUNC9(vec0, vec1, vec2, vec3, 7);
    FUNC8(vec0, vec0, vec1, vec1, vec2, vec2, vec3, vec3,
                res0, res1, res2, res3);
    FUNC2(res1, res0, res3, res2, res0, res2);
    FUNC13(res0, res2);
    FUNC0(res0, dst0, res2, dst1, res0, res2);
    FUNC12(res0, res2, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
}