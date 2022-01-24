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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(uint8_t *src, int32_t src_stride,
                                int16_t *dst, int32_t dst_stride,
                                const int8_t *filter, int32_t height)
{
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r, src21_r, src43_r;
    v16i8 src65_r, src87_r, src109_r, src2110, src4332, src6554, src8776;
    v16i8 src10998;
    v8i16 dst10, dst32, dst54, dst76, filt0, filt1, filter_vec, const_vec;

    src -= src_stride;
    const_vec = FUNC11(128);
    const_vec <<= 6;

    filter_vec = FUNC6(filter);
    FUNC7(filter_vec, 0, 1, filt0, filt1);

    FUNC4(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    FUNC1(src1, src0, src2, src1, src10_r, src21_r);
    src2110 = (v16i8) FUNC10((v2i64) src21_r, (v2i64) src10_r);
    src2110 = (v16i8) FUNC12((v16u8) src2110, 128);

    FUNC5(src, src_stride, src3, src4, src5, src6, src7, src8, src9, src10);
    src += (8 * src_stride);
    FUNC2(src3, src2, src4, src3, src5, src4, src6, src5, src32_r, src43_r,
               src54_r, src65_r);
    FUNC2(src7, src6, src8, src7, src9, src8, src10, src9, src76_r,
               src87_r, src98_r, src109_r);
    FUNC3(src43_r, src32_r, src65_r, src54_r, src87_r, src76_r, src109_r,
               src98_r, src4332, src6554, src8776, src10998);
    FUNC9(src4332, src6554, src8776, src10998);

    dst10 = const_vec;
    dst32 = const_vec;
    dst54 = const_vec;
    dst76 = const_vec;
    FUNC0(src2110, src4332, filt0, filt1, dst10, dst10);
    FUNC0(src4332, src6554, filt0, filt1, dst32, dst32);
    FUNC0(src6554, src8776, filt0, filt1, dst54, dst54);
    FUNC0(src8776, src10998, filt0, filt1, dst76, dst76);
    FUNC8(dst10, dst32, dst54, dst76, 0, 1, 0, 1, 0, 1, 0, 1, dst, dst_stride);
    dst += (8 * dst_stride);

    src2 = src10;
    src2110 = src10998;

    FUNC5(src, src_stride, src3, src4, src5, src6, src7, src8, src9, src10);
    src += (8 * src_stride);

    FUNC2(src3, src2, src4, src3, src5, src4, src6, src5, src32_r, src43_r,
               src54_r, src65_r);
    FUNC2(src7, src6, src8, src7, src9, src8, src10, src9, src76_r,
               src87_r, src98_r, src109_r);
    FUNC3(src43_r, src32_r, src65_r, src54_r, src87_r, src76_r, src109_r,
               src98_r, src4332, src6554, src8776, src10998);
    FUNC9(src4332, src6554, src8776, src10998);

    dst10 = const_vec;
    dst32 = const_vec;
    dst54 = const_vec;
    dst76 = const_vec;
    FUNC0(src2110, src4332, filt0, filt1, dst10, dst10);
    FUNC0(src4332, src6554, filt0, filt1, dst32, dst32);
    FUNC0(src6554, src8776, filt0, filt1, dst54, dst54);
    FUNC0(src8776, src10998, filt0, filt1, dst76, dst76);
    FUNC8(dst10, dst32, dst54, dst76, 0, 1, 0, 1, 0, 1, 0, 1, dst, dst_stride);
}