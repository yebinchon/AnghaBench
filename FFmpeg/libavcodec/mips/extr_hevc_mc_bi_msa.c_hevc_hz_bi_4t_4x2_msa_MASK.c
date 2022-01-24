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
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int FUNC10 (int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/ * ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC15(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter,
                                  int32_t height)
{
    v8i16 filt0, filt1;
    v16i8 src0, src1, dst0, vec0, vec1;
    v8i16 in0, in1;
    v16i8 mask0 = FUNC2(&ff_hevc_mask_arr[16]);
    v16i8 mask1;
    v8i16 tmp0;
    v8i16 filter_vec, const_vec;

    src0_ptr -= 1;

    const_vec = FUNC12(128);
    const_vec <<= 6;

    filter_vec = FUNC4(filter);
    FUNC6(filter_vec, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    FUNC3(src0_ptr, src_stride, src0, src1);
    FUNC5(src1_ptr, src2_stride, in0, in1);
    in0 = (v8i16) FUNC11((v2i64) in1, (v2i64) in0);
    FUNC9(src0, src1);
    FUNC8(src0, src1, src0, src1, mask0, mask1, vec0, vec1);
    tmp0 = const_vec;
    FUNC1(vec0, vec1, filt0, filt1, tmp0, tmp0);

    tmp0 = FUNC10(tmp0, in0);
    tmp0 = FUNC14(tmp0, 7);
    FUNC0(tmp0);
    dst0 = FUNC13((v16i8) tmp0, (v16i8) tmp0);

    FUNC7(dst0, 0, 1, dst, dst_stride);
}