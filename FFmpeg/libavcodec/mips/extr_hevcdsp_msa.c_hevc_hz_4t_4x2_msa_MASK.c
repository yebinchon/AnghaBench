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
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int FUNC8 (int) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC9(uint8_t *src,
                               int32_t src_stride,
                               int16_t *dst,
                               int32_t dst_stride,
                               const int8_t *filter)
{
    v8i16 filt0, filt1;
    v16i8 src0, src1;
    v16i8 mask1, vec0, vec1;
    v8i16 dst0;
    v8i16 filter_vec, const_vec;
    v16i8 mask0 = FUNC1(ff_hevc_mask_arr + 16);

    src -= 1;

    filter_vec = FUNC3(filter);
    FUNC4(filter_vec, 0, 1, filt0, filt1);

    mask1 = mask0 + 2;

    const_vec = FUNC8(128);
    const_vec <<= 6;

    FUNC2(src, src_stride, src0, src1);
    FUNC7(src0, src1);

    FUNC6(src0, src1, src0, src1, mask0, mask1, vec0, vec1);
    dst0 = const_vec;
    FUNC0(vec0, vec1, filt0, filt1, dst0, dst0);

    FUNC5(dst0, 0, 1, dst, dst_stride);
}