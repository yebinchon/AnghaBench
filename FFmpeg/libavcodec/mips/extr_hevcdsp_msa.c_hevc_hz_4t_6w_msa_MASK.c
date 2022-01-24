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
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC12(uint8_t *src,
                              int32_t src_stride,
                              int16_t *dst,
                              int32_t dst_stride,
                              const int8_t *filter,
                              int32_t height)
{
    uint32_t loop_cnt;
    uint64_t dst_val0, dst_val1, dst_val2, dst_val3;
    uint32_t dst_val_int0, dst_val_int1, dst_val_int2, dst_val_int3;
    v8i16 filt0, filt1, dst0, dst1, dst2, dst3;
    v16i8 src0, src1, src2, src3;
    v16i8 mask0 = FUNC1(ff_hevc_mask_arr);
    v16i8 mask1;
    v16i8 vec0, vec1;
    v8i16 filter_vec, const_vec;

    src -= 1;

    filter_vec = FUNC3(filter);
    FUNC5(filter_vec, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    const_vec = FUNC11(128);
    const_vec <<= 6;

    for (loop_cnt = 2; loop_cnt--;) {
        FUNC2(src, src_stride, src0, src1, src2, src3);
        src += (4 * src_stride);

        FUNC8(src0, src1, src2, src3);

        FUNC7(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
        dst0 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst0, dst0);
        FUNC7(src1, src1, src1, src1, mask0, mask1, vec0, vec1);
        dst1 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst1, dst1);
        FUNC7(src2, src2, src2, src2, mask0, mask1, vec0, vec1);
        dst2 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst2, dst2);
        FUNC7(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
        dst3 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst3, dst3);

        dst_val0 = FUNC9((v2i64) dst0, 0);
        dst_val1 = FUNC9((v2i64) dst1, 0);
        dst_val2 = FUNC9((v2i64) dst2, 0);
        dst_val3 = FUNC9((v2i64) dst3, 0);

        dst_val_int0 = FUNC10((v4i32) dst0, 2);
        dst_val_int1 = FUNC10((v4i32) dst1, 2);
        dst_val_int2 = FUNC10((v4i32) dst2, 2);
        dst_val_int3 = FUNC10((v4i32) dst3, 2);

        FUNC4(dst_val0, dst);
        FUNC6(dst_val_int0, dst + 4);
        dst += dst_stride;
        FUNC4(dst_val1, dst);
        FUNC6(dst_val_int1, dst + 4);
        dst += dst_stride;
        FUNC4(dst_val2, dst);
        FUNC6(dst_val_int2, dst + 4);
        dst += dst_stride;
        FUNC4(dst_val3, dst);
        FUNC6(dst_val_int3, dst + 4);
        dst += dst_stride;
    }
}