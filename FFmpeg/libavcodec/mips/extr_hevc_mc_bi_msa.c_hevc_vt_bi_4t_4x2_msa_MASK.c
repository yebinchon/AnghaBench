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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int FUNC13 (int,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC15(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    v16i8 src0, src1, src2, src3, src4;
    v8i16 in0, in1;
    v16i8 src10_r, src32_r, src21_r, src43_r, src2110, src4332;
    v8i16 dst10;
    v8i16 filt0, filt1;
    v8i16 filter_vec, const_vec;

    src0_ptr -= src_stride;

    const_vec = FUNC11(128);
    const_vec <<= 6;

    filter_vec = FUNC5(filter);
    FUNC7(filter_vec, 0, 1, filt0, filt1);

    FUNC4(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);

    FUNC2(src1, src0, src2, src1, src10_r, src21_r);
    src2110 = (v16i8) FUNC10((v2i64) src21_r, (v2i64) src10_r);
    src2110 = (v16i8) FUNC14((v16u8) src2110, 128);

    FUNC3(src0_ptr, src_stride, src3, src4);
    FUNC6(src1_ptr, src2_stride, in0, in1);
    in0 = (v8i16) FUNC10((v2i64) in1, (v2i64) in0);
    FUNC2(src3, src2, src4, src3, src32_r, src43_r);
    src4332 = (v16i8) FUNC10((v2i64) src43_r, (v2i64) src32_r);
    src4332 = (v16i8) FUNC14((v16u8) src4332, 128);

    dst10 = const_vec;
    FUNC1(src2110, src4332, filt0, filt1, dst10, dst10);
    dst10 = FUNC9(dst10, in0);
    dst10 = FUNC13(dst10, 7);
    FUNC0(dst10);

    dst10 = (v8i16) FUNC12((v16i8) dst10, (v16i8) dst10);
    FUNC8(dst10, 0, 1, dst, dst_stride);
}