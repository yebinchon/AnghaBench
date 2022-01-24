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
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(uint8_t *dst, ptrdiff_t dst_stride,
                     const uint8_t *src_left, const uint8_t *src_top_ptr)
{
    uint8_t top_left = src_top_ptr[-1];
    uint32_t loop_cnt, left;
    v16i8 src_top, src_left0, src_left1, src_left2, src_left3;
    v8u16 src_top_left, res_r, res_l;

    src_top = FUNC3(src_top_ptr);
    src_top_left = (v8u16) FUNC8(top_left);

    src_left += 12;
    for (loop_cnt = 4; loop_cnt--;) {
        left = FUNC4(src_left);
        src_left0 = FUNC7(left >> 24);
        src_left1 = FUNC7(left >> 16);
        src_left2 = FUNC7(left >> 8);
        src_left3 = FUNC7(left);
        src_left -= 4;

        FUNC1(src_left0, src_top, res_r, res_l);
        FUNC0(res_r, res_l, res_r, res_l);
        FUNC2(src_top_left, src_top_left, res_r, res_l);

        FUNC6(res_r, res_l, 7);
        FUNC5(res_r, res_l, dst);
        dst += dst_stride;

        FUNC1(src_left1, src_top, res_r, res_l);
        FUNC0(res_r, res_l, res_r, res_l);
        FUNC2(src_top_left, src_top_left, res_r, res_l);
        FUNC6(res_r, res_l, 7);
        FUNC5(res_r, res_l, dst);
        dst += dst_stride;

        FUNC1(src_left2, src_top, res_r, res_l);
        FUNC0(res_r, res_l, res_r, res_l);
        FUNC2(src_top_left, src_top_left, res_r, res_l);
        FUNC6(res_r, res_l, 7);
        FUNC5(res_r, res_l, dst);
        dst += dst_stride;

        FUNC1(src_left3, src_top, res_r, res_l);
        FUNC0(res_r, res_l, res_r, res_l);
        FUNC2(src_top_left, src_top_left, res_r, res_l);
        FUNC6(res_r, res_l, 7);
        FUNC5(res_r, res_l, dst);
        dst += dst_stride;
    }
}