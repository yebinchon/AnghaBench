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
typedef  scalar_t__ v8u16 ;
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mc_filt_mask_arr ; 

__attribute__((used)) static void FUNC13(uint8_t *src, int32_t src_stride,
                                      uint8_t *dst, int32_t dst_stride,
                                      const int8_t *filter_horiz,
                                      const int8_t *filter_vert)
{
    v16i8 src0, src1, src2, src3, src4, mask;
    v16u8 filt_vt, filt_hz, vec0, vec1, res0, res1;
    v8u16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, filt, tmp0, tmp1;

    mask = FUNC3(&mc_filt_mask_arr[16]);

    /* rearranging filter */
    filt = FUNC5(filter_horiz);
    filt_hz = (v16u8) FUNC12((v8i16) filt, 0);

    filt = FUNC5(filter_vert);
    filt_vt = (v16u8) FUNC12((v8i16) filt, 0);

    FUNC4(src, src_stride, src0, src1, src2, src3, src4);
    hz_out0 = FUNC1(src0, src1, mask, filt_hz, 7);
    hz_out2 = FUNC1(src2, src3, mask, filt_hz, 7);
    hz_out4 = FUNC1(src4, src4, mask, filt_hz, 7);
    hz_out1 = (v8u16) FUNC11((v16i8) hz_out2, (v16i8) hz_out0, 8);
    hz_out3 = (v8u16) FUNC10((v2i64) hz_out4, (v2i64) hz_out2);

    FUNC2(hz_out0, hz_out1, hz_out2, hz_out3, vec0, vec1);
    FUNC0(vec0, vec1, filt_vt, filt_vt, tmp0, tmp1);
    FUNC8(tmp0, tmp1, 7);
    FUNC7(tmp0, tmp1, 7);
    FUNC6(tmp0, tmp0, tmp1, tmp1, res0, res1);
    FUNC9(res0, 0, 1, dst, dst_stride);
    FUNC9(res1, 0, 1, dst + 2 * dst_stride, dst_stride);
}