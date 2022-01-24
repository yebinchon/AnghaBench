#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8u16 ;
typedef  scalar_t__ v4u32 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  scalar_t__ v2u64 ;
typedef  int /*<<< orphan*/  v2i64 ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 

void FUNC10(uint8_t *dst, ptrdiff_t dst_stride, const uint8_t *src_left,
                   const uint8_t *src_top)
{
    uint64_t val0, val1;
    v16i8 store;
    v16u8 src = { 0 };
    v8u16 sum_h;
    v4u32 sum_w;
    v2u64 sum_d;

    val0 = FUNC1(src_top);
    val1 = FUNC1(src_left);
    FUNC0(val0, val1, src);
    sum_h = FUNC5(src, src);
    sum_w = FUNC6(sum_h, sum_h);
    sum_d = FUNC4(sum_w, sum_w);
    sum_w = (v4u32) FUNC7((v4i32) sum_d, (v4i32) sum_d);
    sum_d = FUNC4(sum_w, sum_w);
    sum_w = (v4u32) FUNC9((v4i32) sum_d, 4);
    store = FUNC8((v16i8) sum_w, 0);
    val0 = FUNC3((v2i64) store, 0);

    FUNC2(val0, val0, val0, val0, dst, dst_stride);
    dst += (4 * dst_stride);
    FUNC2(val0, val0, val0, val0, dst, dst_stride);
}