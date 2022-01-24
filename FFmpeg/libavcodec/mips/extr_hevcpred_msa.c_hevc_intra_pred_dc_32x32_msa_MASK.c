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
typedef  int /*<<< orphan*/  v4u32 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(const uint8_t *src_top,
                                         const uint8_t *src_left,
                                         uint8_t *dst, int32_t stride)
{
    uint32_t row;
    v16u8 src_above1, src_above2, store, src_left1, src_left2;
    v8u16 sum_above1, sum_above2;
    v8u16 sum_left1, sum_left2;
    v8u16 sum, sum_above, sum_left;

    FUNC1(src_top, 16, src_above1, src_above2);
    FUNC1(src_left, 16, src_left1, src_left2);
    FUNC0(src_above1, src_above2, sum_above1, sum_above2);
    FUNC0(src_left1, src_left2, sum_left1, sum_left2);
    sum_above = sum_above1 + sum_above2;
    sum_left = sum_left1 + sum_left2;
    sum = sum_above + sum_left;
    sum = (v8u16) FUNC4(sum, sum);
    sum = (v8u16) FUNC3((v4u32) sum, (v4u32) sum);
    sum = (v8u16) FUNC5((v4i32) sum, (v4i32) sum);
    sum = (v8u16) FUNC3((v4u32) sum, (v4u32) sum);
    sum = (v8u16) FUNC7((v4i32) sum, 6);
    store = (v16u8) FUNC6((v16i8) sum, 0);

    for (row = 16; row--;) {
        FUNC2(store, store, dst, 16);
        dst += stride;
        FUNC2(store, store, dst, 16);
        dst += stride;
    }
}