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
typedef  scalar_t__ v8i16 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC14(uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 const int8_t *filter)
{
    uint32_t loop_cnt;
    uint64_t out0, out1, out2;
    v16i8 src0, src1, src2, src3, src4, src5;
    v8i16 vec0, vec1, vec2, vec3, vec4, tmp0, tmp1, tmp2;
    v8i16 filt, filt0, filt1;

    src -= src_stride;

    /* rearranging filter_y */
    filt = FUNC4(filter);
    FUNC8(filt, 0, 1, filt0, filt1);

    FUNC3(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    FUNC11(src0, src1, src2);
    FUNC1(src1, src0, src2, src1, vec0, vec2);

    for (loop_cnt = 2; loop_cnt--;) {
        FUNC3(src, src_stride, src3, src4, src5);
        src += (3 * src_stride);

        FUNC11(src3, src4, src5);
        FUNC2(src3, src2, src4, src3, src5, src4, vec1, vec3, vec4);
        tmp0 = FUNC0(vec0, vec1, filt0, filt1);
        tmp1 = FUNC0(vec2, vec3, filt0, filt1);
        tmp2 = FUNC0(vec1, vec4, filt0, filt1);
        FUNC9(tmp0, tmp1, 6);
        tmp2 = FUNC13(tmp2, 6);
        FUNC6(tmp0, tmp1, tmp2, 7);
        FUNC5(tmp1, tmp0, tmp2, tmp2, tmp0, tmp2);
        FUNC10(tmp0, tmp2);

        out0 = FUNC12((v2i64) tmp0, 0);
        out1 = FUNC12((v2i64) tmp0, 1);
        out2 = FUNC12((v2i64) tmp2, 0);
        FUNC7(out0, dst);
        dst += dst_stride;
        FUNC7(out1, dst);
        dst += dst_stride;
        FUNC7(out2, dst);
        dst += dst_stride;

        src2 = src5;
        vec0 = vec3;
        vec2 = vec4;
    }
}