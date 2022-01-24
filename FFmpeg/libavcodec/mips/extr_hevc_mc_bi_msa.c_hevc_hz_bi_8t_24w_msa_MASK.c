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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  const int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int,int) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC17(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    uint32_t loop_cnt;
    uint64_t dst_val0;
    v16i8 src0, src1, tmp0, tmp1;
    v8i16 filt0, filt1, filt2, filt3;
    v16i8 mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v16i8 vec0, vec1, vec2, vec3;
    v8i16 dst0, dst1, dst2;
    v8i16 in0, in1, in2;
    v8i16 filter_vec, const_vec;
    v16i8 mask0 = FUNC3(&ff_hevc_mask_arr[0]);

    src0_ptr = src0_ptr - 3;
    const_vec = FUNC15(128);
    const_vec <<= 6;

    filter_vec = FUNC5(filter);
    FUNC9(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = mask0 + 8;
    mask5 = mask0 + 10;
    mask6 = mask0 + 12;
    mask7 = mask0 + 14;

    for (loop_cnt = height; loop_cnt--;) {
        FUNC4(src0_ptr, 16, src0, src1);
        src0_ptr += src_stride;
        FUNC6(src1_ptr, 8, in0, in1);
        in2 = FUNC5(src1_ptr + 16);
        src1_ptr += src2_stride;
        FUNC12(src0, src1);

        dst0 = const_vec;
        dst1 = const_vec;
        dst2 = const_vec;
        FUNC11(src0, src0, src0, src1, mask0, mask4, vec0, vec1);
        FUNC11(src1, src1, src0, src0, mask0, mask1, vec2, vec3);
        FUNC1(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt1, dst0,
                     dst1, dst2, dst0);
        FUNC11(src0, src1, src1, src1, mask5, mask1, vec0, vec1);
        FUNC11(src0, src0, src0, src1, mask2, mask6, vec2, vec3);
        FUNC1(vec0, vec1, vec2, vec3, filt1, filt1, filt2, filt2, dst1,
                     dst2, dst0, dst1);
        FUNC11(src1, src1, src0, src0, mask2, mask3, vec0, vec1);
        FUNC11(src0, src1, src1, src1, mask7, mask3, vec2, vec3);
        FUNC1(vec0, vec1, vec2, vec3, filt2, filt3, filt3, filt3, dst2,
                     dst0, dst1, dst2);

        FUNC2(in0, in1, dst0, dst1, 7, dst0, dst1);
        dst2 = FUNC13(dst2, in2);
        dst2 = FUNC16(dst2, 7);
        FUNC0(dst2);

        FUNC7(dst1, dst0, dst2, dst2, tmp0, tmp1);
        dst_val0 = FUNC14((v2i64) tmp1, 0);
        FUNC10(tmp0, dst);
        FUNC8(dst_val0, dst + 16);
        dst += dst_stride;
    }
}