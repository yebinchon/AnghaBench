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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 

void FUNC8(uint8_t *src, ptrdiff_t stride)
{
    uint8_t *src_top = src - stride;
    uint8_t *dst = src;
    v16u8 src_above, out;
    v8u16 sum_above;
    v4u32 sum_top;
    v2u64 sum;

    src_above = FUNC0(src_top);

    sum_above = FUNC3(src_above, src_above);
    sum_top = FUNC4(sum_above, sum_above);
    sum = FUNC2(sum_top, sum_top);
    sum_top = (v4u32) FUNC5((v4i32) sum, (v4i32) sum);
    sum = FUNC2(sum_top, sum_top);
    sum = (v2u64) FUNC7((v2i64) sum, 4);
    out = (v16u8) FUNC6((v16i8) sum, 0);

    FUNC1(out, out, out, out, out, out, out, out, dst, stride);
    dst += (8 * stride);
    FUNC1(out, out, out, out, out, out, out, out, dst, stride);
}