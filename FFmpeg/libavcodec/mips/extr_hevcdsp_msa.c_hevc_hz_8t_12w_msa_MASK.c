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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC12(uint8_t *src, int32_t src_stride,
                               int16_t *dst, int32_t dst_stride,
                               const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    int64_t res0, res1, res2, res3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16i8 mask0, mask1, mask2, mask3, mask4, mask5, mask6, mask7;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5;
    v8i16 filt0, filt1, filt2, filt3, dst0, dst1, dst2, dst3, dst4, dst5;
    v8i16 filter_vec, const_vec;

    src -= 3;
    const_vec = FUNC11(128);
    const_vec <<= 6;

    filter_vec = FUNC4(filter);
    FUNC6(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    mask0 = FUNC2(ff_hevc_mask_arr);
    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;
    mask4 = FUNC2(ff_hevc_mask_arr + 16);
    mask5 = mask4 + 2;
    mask6 = mask4 + 4;
    mask7 = mask4 + 6;

    for (loop_cnt = 4; loop_cnt--;) {
        FUNC3(src, src_stride, src0, src1, src2, src3);
        FUNC3(src + 8, src_stride, src4, src5, src6, src7);
        src += (4 * src_stride);
        FUNC9(src0, src1, src2, src3, src4, src5, src6, src7);

        dst0 = const_vec;
        dst1 = const_vec;
        dst2 = const_vec;
        dst3 = const_vec;
        dst4 = const_vec;
        dst5 = const_vec;
        FUNC8(src0, src0, src1, src1, mask0, mask0, vec0, vec1);
        FUNC8(src2, src2, src3, src3, mask0, mask0, vec2, vec3);
        FUNC8(src4, src5, src6, src7, mask4, mask4, vec4, vec5);
        FUNC1(vec0, vec1, vec2, vec3, filt0, filt0, filt0, filt0, dst0,
                     dst1, dst2, dst3);
        FUNC0(vec4, vec5, filt0, filt0, dst4, dst5);
        FUNC8(src0, src0, src1, src1, mask1, mask1, vec0, vec1);
        FUNC8(src2, src2, src3, src3, mask1, mask1, vec2, vec3);
        FUNC8(src4, src5, src6, src7, mask5, mask5, vec4, vec5);
        FUNC1(vec0, vec1, vec2, vec3, filt1, filt1, filt1, filt1, dst0,
                     dst1, dst2, dst3);
        FUNC0(vec4, vec5, filt1, filt1, dst4, dst5);
        FUNC8(src0, src0, src1, src1, mask2, mask2, vec0, vec1);
        FUNC8(src2, src2, src3, src3, mask2, mask2, vec2, vec3);
        FUNC8(src4, src5, src6, src7, mask6, mask6, vec4, vec5);
        FUNC1(vec0, vec1, vec2, vec3, filt2, filt2, filt2, filt2, dst0,
                     dst1, dst2, dst3);
        FUNC0(vec4, vec5, filt2, filt2, dst4, dst5);
        FUNC8(src0, src0, src1, src1, mask3, mask3, vec0, vec1);
        FUNC8(src2, src2, src3, src3, mask3, mask3, vec2, vec3);
        FUNC8(src4, src5, src6, src7, mask7, mask7, vec4, vec5);
        FUNC1(vec0, vec1, vec2, vec3, filt3, filt3, filt3, filt3, dst0,
                     dst1, dst2, dst3);
        FUNC0(vec4, vec5, filt3, filt3, dst4, dst5);

        res0 = FUNC10((v2i64) dst4, 0);
        res1 = FUNC10((v2i64) dst4, 1);
        res2 = FUNC10((v2i64) dst5, 0);
        res3 = FUNC10((v2i64) dst5, 1);
        FUNC7(dst0, dst1, dst2, dst3, dst, dst_stride);
        FUNC5(res0, res1, res2, res3, (dst + 8), dst_stride);
        dst += (4 * dst_stride);
    }
}