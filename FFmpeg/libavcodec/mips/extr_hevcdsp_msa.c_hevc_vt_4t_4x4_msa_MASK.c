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
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(uint8_t *src,
                               int32_t src_stride,
                               int16_t *dst,
                               int32_t dst_stride,
                               const int8_t *filter,
                               int32_t height)
{
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v16i8 src10_r, src32_r, src54_r, src21_r, src43_r, src65_r;
    v16i8 src2110, src4332, src6554;
    v8i16 dst10, dst32;
    v8i16 filt0, filt1;
    v8i16 filter_vec, const_vec;

    src -= src_stride;

    const_vec = FUNC9(128);
    const_vec <<= 6;

    filter_vec = FUNC5(filter);
    FUNC6(filter_vec, 0, 1, filt0, filt1);

    FUNC4(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    FUNC2(src1, src0, src2, src1, src3, src2, src4, src3,
               src10_r, src21_r, src32_r, src43_r);
    FUNC1(src5, src4, src6, src5, src54_r, src65_r);
    FUNC3(src21_r, src10_r, src43_r, src32_r, src65_r, src54_r,
               src2110, src4332, src6554);
    FUNC8(src2110, src4332, src6554);
    dst10 = const_vec;
    FUNC0(src2110, src4332, filt0, filt1, dst10, dst10);
    dst32 = const_vec;
    FUNC0(src4332, src6554, filt0, filt1, dst32, dst32);

    FUNC7(dst10, dst32, 0, 1, 0, 1, dst, dst_stride);
}