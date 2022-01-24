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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC12(uint8_t *src, int32_t src_stride,
                                     uint8_t *dst, int32_t dst_stride,
                                     const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, filt0, filt1, mask0, mask1;
    v16u8 out;
    v8i16 filt, vec0, vec1, vec2, vec3;

    mask0 = FUNC2(&ff_hevc_mask_arr[0]);
    src -= 1;

    filt = FUNC4(filter);
    FUNC7(filt, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        FUNC3(src, src_stride, src0, src1);
        src += (2 * src_stride);

        FUNC11(src0, src1);
        FUNC10(src0, src0, src1, src1, mask0, mask0, vec0, vec1);
        FUNC0(vec0, vec1, filt0, filt0, vec0, vec1);
        FUNC10(src0, src0, src1, src1, mask1, mask1, vec2, vec3);
        FUNC1(vec2, vec3, filt1, filt1, vec0, vec1);
        FUNC8(vec0, vec1, 6);
        FUNC6(vec0, vec1, 7);
        out = FUNC5(vec0, vec1);
        FUNC9(out, 0, 1, dst, dst_stride);
        dst += (2 * dst_stride);
    }
}