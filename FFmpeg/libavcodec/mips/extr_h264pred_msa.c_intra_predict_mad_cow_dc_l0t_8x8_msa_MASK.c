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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uint8_t *src, int32_t stride)
{
    uint32_t src0, src1, src2;
    uint32_t out0, out1, out2;
    uint64_t store0, store1;
    v16u8 src_top;
    v8u16 add;
    v4u32 sum;

    src_top = FUNC0(src - stride);
    add = FUNC3(src_top, src_top);
    sum = FUNC4(add, add);
    src0 = FUNC2((v4i32) sum, 0);
    src1 = FUNC2((v4i32) sum, 1);

    src2  = src[0 * stride - 1];
    src2 += src[1 * stride - 1];
    src2 += src[2 * stride - 1];
    src2 += src[3 * stride - 1];
    src2 = (src0 + src2 + 4) >> 3;
    src0 = (src0 + 2) >> 2;
    src1 = (src1 + 2) >> 2;
    out0 = src0 * 0x01010101;
    out1 = src1 * 0x01010101;
    out2 = src2 * 0x01010101;
    store1 = ((uint64_t) out1 << 32);
    store0 = store1 | ((uint64_t) out2);
    store1 = store1 | ((uint64_t) out0);

    FUNC1(store0, store0, store0, store0, src, stride);
    src += (4 * stride);
    FUNC1(store1, store1, store1, store1, src, stride);
}