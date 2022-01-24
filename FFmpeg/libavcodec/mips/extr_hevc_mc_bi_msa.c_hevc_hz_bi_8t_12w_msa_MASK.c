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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int,scalar_t__,scalar_t__) ; 
 int FUNC17 (int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int,int) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC20(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    uint32_t loop_cnt;
    int32_t tmp0, tmp1;
    int64_t tmp2, tmp3;
    v16i8 src0, src1, src2, src3;
    v16i8 vec0, vec1, vec2;
    v8i16 filt0, filt1, filt2, filt3;
    v16i8 mask0, mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v8i16 dst0, dst1, dst2;
    v8i16 in0, in1, in2, in3;
    v8i16 filter_vec, const_vec;

    src0_ptr -= 3;
    const_vec = FUNC17(128);
    const_vec <<= 6;

    filter_vec = FUNC5(filter);
    FUNC9(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask0 = FUNC3(ff_hevc_mask_arr);
    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = FUNC3(&ff_hevc_mask_arr[16]);
    mask5 = mask4 + 2;
    mask6 = mask4 + 4;
    mask7 = mask4 + 6;

    for (loop_cnt = 8; loop_cnt--;) {
        FUNC4(src0_ptr, 8, src0, src1);
        src0_ptr += src_stride;
        FUNC4(src0_ptr, 8, src2, src3);
        src0_ptr += src_stride;
        FUNC6(src1_ptr, 8, in0, in1);
        src1_ptr += src2_stride;
        FUNC6(src1_ptr, 8, in2, in3);
        src1_ptr += src2_stride;
        FUNC12(src0, src1, src2, src3);

        dst0 = const_vec;
        dst1 = const_vec;
        dst2 = const_vec;

        FUNC11(src0, src0, src1, src3, src2, src2, mask0, mask4, mask0,
                   vec0, vec1, vec2);
        FUNC1(vec0, vec1, filt0, filt0, dst0, dst1);
        dst2 = FUNC16(dst2, vec2, (v16i8) filt0);
        FUNC11(src0, src0, src1, src3, src2, src2, mask1, mask5, mask1,
                   vec0, vec1, vec2);
        FUNC1(vec0, vec1, filt1, filt1, dst0, dst1);
        dst2 = FUNC16(dst2, vec2, (v16i8) filt1);
        FUNC11(src0, src0, src1, src3, src2, src2, mask2, mask6, mask2,
                   vec0, vec1, vec2);
        FUNC1(vec0, vec1, filt2, filt2, dst0, dst1);
        dst2 = FUNC16(dst2, vec2, (v16i8) filt2);
        FUNC11(src0, src0, src1, src3, src2, src2, mask3, mask7, mask3,
                   vec0, vec1, vec2);
        FUNC1(vec0, vec1, filt3, filt3, dst0, dst1);
        dst2 = FUNC16(dst2, vec2, (v16i8) filt3);

        in1 = (v8i16) FUNC18((v2i64) in3, (v2i64) in1);
        FUNC2(in0, in1, dst0, dst1, 7, dst0, dst1);
        dst2 = FUNC13(in2, dst2);
        dst2 = FUNC19(dst2, 7);
        FUNC0(dst2);
        FUNC7(dst1, dst0, dst2, dst2, dst0, dst1);

        tmp2 = FUNC14((v2i64) dst0, 0);
        tmp0 = FUNC15((v4i32) dst0, 2);
        tmp3 = FUNC14((v2i64) dst1, 0);
        tmp1 = FUNC15((v4i32) dst0, 3);
        FUNC8(tmp2, dst);
        FUNC10(tmp0, dst + 8);
        dst += dst_stride;
        FUNC8(tmp3, dst);
        FUNC10(tmp1, dst + 8);
        dst += dst_stride;
    }
}