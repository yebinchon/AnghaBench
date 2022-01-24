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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(uint8_t *dst, ptrdiff_t dst_stride,
                   const uint8_t *src_left, const uint8_t *src_top_ptr)
{
    uint32_t left;
    uint8_t top_left = src_top_ptr[-1];
    v16i8 src_top, src_left0, src_left1, src_left2, src_left3, tmp0, tmp1;
    v16u8 src0, src1, src2, src3;
    v8u16 src_top_left, vec0, vec1, vec2, vec3;

    src_top_left = (v8u16) FUNC9(top_left);
    src_top = FUNC3(src_top_ptr);
    left = FUNC4(src_left);
    src_left0 = FUNC8(left >> 24);
    src_left1 = FUNC8(left >> 16);
    src_left2 = FUNC8(left >> 8);
    src_left3 = FUNC8(left);

    FUNC1(src_left0, src_top, src_left1, src_top, src_left2, src_top,
               src_left3, src_top, src0, src1, src2, src3);
    FUNC0(src0, src1, src2, src3, vec0, vec1, vec2, vec3);
    FUNC2(src_top_left, src_top_left, vec0, vec1);
    FUNC2(src_top_left, src_top_left, vec2, vec3);
    FUNC6(vec0, vec1, vec2, vec3, 7);
    FUNC5(vec1, vec0, vec3, vec2, tmp0, tmp1);
    FUNC7(tmp0, 0, 2, dst, dst_stride);
    FUNC7(tmp1, 0, 2, dst + 2 * dst_stride, dst_stride);
}