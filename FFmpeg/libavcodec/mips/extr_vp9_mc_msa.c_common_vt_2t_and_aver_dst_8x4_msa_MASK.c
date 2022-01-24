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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst,
                                              int32_t dst_stride,
                                              const int8_t *filter)
{
    int64_t tp0, tp1, tp2, tp3;
    v16u8 src0, src1, src2, src3, src4;
    v16u8 dst0, dst1, vec0, vec1, vec2, vec3, filt0;
    v8u16 tmp0, tmp1, tmp2, tmp3;
    v8i16 filt;

    /* rearranging filter_y */
    filt = FUNC4(filter);
    filt0 = (v16u8) FUNC9(filt, 0);

    FUNC5(src, src_stride, src0, src1, src2, src3, src4);
    FUNC3(dst, dst_stride, tp0, tp1, tp2, tp3);
    FUNC2(tp0, tp1, dst0);
    FUNC2(tp2, tp3, dst1);
    FUNC1(src1, src0, src2, src1, vec0, vec1);
    FUNC1(src3, src2, src4, src3, vec2, vec3);
    FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0,
                tmp0, tmp1, tmp2, tmp3);
    FUNC8(tmp0, tmp1, tmp2, tmp3, 7);
    FUNC7(tmp0, tmp1, tmp2, tmp3, 7);
    FUNC6(tmp0, tmp1, tmp2, tmp3, dst0, dst1, dst, dst_stride);
}