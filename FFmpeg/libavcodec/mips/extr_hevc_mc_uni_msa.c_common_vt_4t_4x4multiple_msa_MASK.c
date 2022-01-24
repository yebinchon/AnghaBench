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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(uint8_t *src, int32_t src_stride,
                                         uint8_t *dst, int32_t dst_stride,
                                         const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5;
    v16i8 src10_r, src32_r, src54_r, src21_r, src43_r, src65_r;
    v16i8 src2110, src4332, filt0, filt1;
    v8i16 filt, out10, out32;
    v16u8 out;

    src -= src_stride;

    filt = FUNC4(filter);
    FUNC7(filt, 0, 1, filt0, filt1);

    FUNC3(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    FUNC1(src1, src0, src2, src1, src10_r, src21_r);

    src2110 = (v16i8) FUNC10((v2i64) src21_r, (v2i64) src10_r);
    src2110 = (v16i8) FUNC11((v16u8) src2110, 128);

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC3(src, src_stride, src3, src4, src5);
        src += (3 * src_stride);
        FUNC1(src3, src2, src4, src3, src32_r, src43_r);
        src4332 = (v16i8) FUNC10((v2i64) src43_r, (v2i64) src32_r);
        src4332 = (v16i8) FUNC11((v16u8) src4332, 128);
        out10 = FUNC0(src2110, src4332, filt0, filt1);

        src2 = FUNC2(src);
        src += (src_stride);
        FUNC1(src5, src4, src2, src5, src54_r, src65_r);
        src2110 = (v16i8) FUNC10((v2i64) src65_r, (v2i64) src54_r);
        src2110 = (v16i8) FUNC11((v16u8) src2110, 128);
        out32 = FUNC0(src4332, src2110, filt0, filt1);
        FUNC8(out10, out32, 6);
        FUNC6(out10, out32, 7);
        out = FUNC5(out10, out32);
        FUNC9(out, 0, 1, 2, 3, dst, dst_stride);
        dst += (4 * dst_stride);
    }
}