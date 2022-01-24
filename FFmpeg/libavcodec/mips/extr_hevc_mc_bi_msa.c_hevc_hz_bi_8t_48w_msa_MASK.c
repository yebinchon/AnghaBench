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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC12 (int) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC14(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3;
    v16i8 tmp0, tmp1, tmp2;
    v8i16 filt0, filt1, filt2, filt3;
    v16i8 mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v16i8 vec0, vec1, vec2, vec3;
    v8i16 dst0, dst1, dst2, dst3, dst4, dst5;
    v8i16 in0, in1, in2, in3, in4, in5;
    v8i16 filter_vec, const_vec;
    v16i8 mask0 = FUNC2(&ff_hevc_mask_arr[0]);

    src0_ptr -= 3;

    const_vec = FUNC12(128);
    const_vec <<= 6;

    filter_vec = FUNC4(filter);
    FUNC8(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = mask0 + 8;
    mask5 = mask0 + 10;
    mask6 = mask0 + 12;
    mask7 = mask0 + 14;

    for (loop_cnt = 64; loop_cnt--;) {
        FUNC3(src0_ptr, 16, src0, src1, src2);
        src3 = FUNC2(src0_ptr + 40);
        src0_ptr += src_stride;
        FUNC6(src1_ptr, 8, in0, in1, in2, in3);
        FUNC11(src0, src1, src2, src3);

        dst0 = const_vec;
        dst1 = const_vec;
        dst2 = const_vec;
        dst3 = const_vec;

        FUNC10(src0, src0, src0, src1, mask0, mask4, vec0, vec1);
        FUNC10(src1, src1, src1, src2, mask0, mask4, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, dst0,
                     dst1, dst2, dst3);
        FUNC10(src0, src0, src0, src1, mask1, mask5, vec0, vec1);
        FUNC10(src1, src1, src1, src2, mask1, mask5, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt1, filt1, filt1, filt1, dst0,
                     dst1, dst2, dst3);
        FUNC10(src0, src0, src0, src1, mask2, mask6, vec0, vec1);
        FUNC10(src1, src1, src1, src2, mask2, mask6, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt2, filt2, filt2, filt2, dst0,
                     dst1, dst2, dst3);
        FUNC10(src0, src0, src0, src1, mask3, mask7, vec0, vec1);
        FUNC10(src1, src1, src1, src2, mask3, mask7, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt3, filt3, filt3, filt3, dst0,
                     dst1, dst2, dst3);
        FUNC1(in0, in1, dst0, dst1, 7, dst0, dst1);
        FUNC1(in2, in3, dst2, dst3, 7, dst2, dst3);
        FUNC7(dst1, dst0, dst3, dst2, tmp0, tmp1);
        FUNC9(tmp0, dst);
        FUNC9(tmp1, dst + 16);

        FUNC5(src1_ptr + 32, 8, in4, in5);
        src1_ptr += src2_stride;

        dst4 = const_vec;
        dst5 = const_vec;
        FUNC10(src2, src2, src3, src3, mask0, mask0, vec0, vec1);
        FUNC10(src2, src2, src3, src3, mask1, mask1, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt0, filt0, filt1, filt1, dst4,
                     dst5, dst4, dst5);
        FUNC10(src2, src2, src3, src3, mask2, mask2, vec0, vec1);
        FUNC10(src2, src2, src3, src3, mask3, mask3, vec2, vec3);
        FUNC0(vec0, vec1, vec2, vec3, filt2, filt2, filt3, filt3, dst4,
                     dst5, dst4, dst5);

        FUNC1(in4, in5, dst4, dst5, 7, dst4, dst5);

        tmp2 = FUNC13((v16i8) dst5, (v16i8) dst4);
        FUNC9(tmp2, dst + 32);
        dst += dst_stride;
    }
}