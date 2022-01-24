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
typedef  int v8i16 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC9(uint8_t *src,
                               int32_t src_stride,
                               int16_t *dst,
                               int32_t dst_stride,
                               const int8_t *filter,
                               int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2;
    v8i16 filt0, filt1;
    v16i8 mask0 = FUNC1(ff_hevc_mask_arr);
    v16i8 mask1, mask2, mask3;
    v8i16 dst0, dst1, dst2, dst3;
    v16i8 vec0, vec1, vec2, vec3;
    v8i16 filter_vec, const_vec;

    src -= 1;

    filter_vec = FUNC3(filter);
    FUNC4(filter_vec, 0, 1, filt0, filt1);

    const_vec = FUNC8(128);
    const_vec <<= 6;

    mask1 = mask0 + 2;
    mask2 = mask0 + 8;
    mask3 = mask0 + 10;

    for (loop_cnt = height; loop_cnt--;) {
        FUNC2(src, 16, src0, src1);
        src2 = FUNC1(src + 24);
        src += src_stride;

        FUNC7(src0, src1, src2);

        dst0 = const_vec;
        dst1 = const_vec;
        dst2 = const_vec;
        dst3 = const_vec;
        FUNC6(src0, src0, src0, src1, mask0, mask2, vec0, vec1);
        FUNC6(src1, src1, src2, src2, mask0, mask0, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, dst0,
                     dst1, dst2, dst3);
        FUNC6(src0, src0, src0, src1, mask1, mask3, vec0, vec1);
        FUNC6(src1, src1, src2, src2, mask1, mask1, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt1, filt1, filt1, filt1, dst0,
                     dst1, dst2, dst3);
        FUNC5(dst0, dst1, dst2, dst3, dst, 8);
        dst += dst_stride;
    }
}