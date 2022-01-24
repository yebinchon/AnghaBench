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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC10(uint8_t *src,
                               int32_t src_stride,
                               int16_t *dst,
                               int32_t dst_stride,
                               const int8_t *filter,
                               int32_t height)
{
    uint32_t loop_cnt;
    int16_t *dst_tmp = dst + 16;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v8i16 filt0, filt1;
    v16i8 mask0 = FUNC1(ff_hevc_mask_arr);
    v16i8 mask1, mask00, mask11;
    v16i8 vec0, vec1;
    v8i16 dst0, dst1, dst2, dst3;
    v8i16 filter_vec, const_vec;

    src -= 1;

    filter_vec = FUNC3(filter);
    FUNC4(filter_vec, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;
    mask00 = mask0 + 8;
    mask11 = mask0 + 10;

    const_vec = FUNC9(128);
    const_vec <<= 6;

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        /* 16 width */
        FUNC2(src, src_stride, src0, src2, src4, src6);
        FUNC2(src + 16, src_stride, src1, src3, src5, src7);
        src += (4 * src_stride);

        FUNC8(src0, src1, src2, src3, src4, src5, src6, src7);

        FUNC7(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
        dst0 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst0, dst0);

        FUNC7(src0, src1, src0, src1, mask00, mask11, vec0, vec1);
        dst1 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst1, dst1);

        FUNC7(src2, src2, src2, src2, mask0, mask1, vec0, vec1);
        dst2 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst2, dst2);

        FUNC7(src2, src3, src2, src3, mask00, mask11, vec0, vec1);
        dst3 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst3, dst3);

        FUNC5(dst0, dst1, dst, 8);
        dst += dst_stride;
        FUNC5(dst2, dst3, dst, 8);
        dst += dst_stride;

        FUNC7(src4, src4, src4, src4, mask0, mask1, vec0, vec1);
        dst0 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst0, dst0);

        FUNC7(src4, src5, src4, src5, mask00, mask11, vec0, vec1);
        dst1 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst1, dst1);

        FUNC7(src6, src6, src6, src6, mask0, mask1, vec0, vec1);
        dst2 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst2, dst2);

        FUNC7(src6, src7, src6, src7, mask00, mask11, vec0, vec1);
        dst3 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst3, dst3);

        FUNC5(dst0, dst1, dst, 8);
        dst += dst_stride;
        FUNC5(dst2, dst3, dst, 8);
        dst += dst_stride;

        /* 8 width */
        FUNC7(src1, src1, src1, src1, mask0, mask1, vec0, vec1);
        dst0 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst0, dst0);

        FUNC7(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
        dst1 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst1, dst1);

        FUNC7(src5, src5, src5, src5, mask0, mask1, vec0, vec1);
        dst2 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst2, dst2);

        FUNC7(src7, src7, src7, src7, mask0, mask1, vec0, vec1);
        dst3 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst3, dst3);

        FUNC6(dst0, dst1, dst2, dst3, dst_tmp, dst_stride);
        dst_tmp += (4 * dst_stride);
    }
}