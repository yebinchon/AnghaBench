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
typedef  int /*<<< orphan*/  v8u16 ;
typedef  scalar_t__ v4u32 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  scalar_t__ v2u64 ;
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  size_t ptrdiff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(uint8_t *src, ptrdiff_t stride)
{
    uint8_t *src_top = src - stride;
    uint8_t *src_left = src - 1;
    uint8_t *dst = src;
    uint32_t addition = 0;
    v16u8 src_above, out;
    v8u16 sum_above;
    v4u32 sum_top;
    v2u64 sum;

    src_above = FUNC0(src_top);

    sum_above = FUNC5(src_above, src_above);
    sum_top = FUNC6(sum_above, sum_above);
    sum = FUNC4(sum_top, sum_top);
    sum_top = (v4u32) FUNC7((v4i32) sum, (v4i32) sum);
    sum = FUNC4(sum_top, sum_top);
    addition = FUNC2((v4i32) sum, 0);
    addition += src_left[ 0 * stride];
    addition += src_left[ 1 * stride];
    addition += src_left[ 2 * stride];
    addition += src_left[ 3 * stride];
    addition += src_left[ 4 * stride];
    addition += src_left[ 5 * stride];
    addition += src_left[ 6 * stride];
    addition += src_left[ 7 * stride];
    addition += src_left[ 8 * stride];
    addition += src_left[ 9 * stride];
    addition += src_left[10 * stride];
    addition += src_left[11 * stride];
    addition += src_left[12 * stride];
    addition += src_left[13 * stride];
    addition += src_left[14 * stride];
    addition += src_left[15 * stride];
    addition = (addition + 16) >> 5;
    out = (v16u8) FUNC3(addition);

    FUNC1(out, out, out, out, out, out, out, out, dst, stride);
    dst += (8 * stride);
    FUNC1(out, out, out, out, out, out, out, out, dst, stride);
}