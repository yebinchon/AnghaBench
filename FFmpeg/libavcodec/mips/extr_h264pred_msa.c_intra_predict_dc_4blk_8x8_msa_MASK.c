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
typedef  scalar_t__ v16u8 ;
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uint8_t *src, int32_t stride)
{
    uint32_t src0, src1, src3, src2;
    uint32_t out0, out1, out2, out3;
    uint64_t store0, store1;
    v16u8 src_top;
    v8u16 add;
    v4u32 sum;

    src_top = FUNC0(src - stride);
    add = FUNC3((v16u8) src_top, (v16u8) src_top);
    sum = FUNC4(add, add);
    src0 = FUNC2((v4i32) sum, 0);
    src1 = FUNC2((v4i32) sum, 1);
    src0 += src[0 * stride - 1];
    src0 += src[1 * stride - 1];
    src0 += src[2 * stride - 1];
    src0 += src[3 * stride - 1];
    src2  = src[4 * stride - 1];
    src2 += src[5 * stride - 1];
    src2 += src[6 * stride - 1];
    src2 += src[7 * stride - 1];
    src0 = (src0 + 4) >> 3;
    src3 = (src1 + src2 + 4) >> 3;
    src1 = (src1 + 2) >> 2;
    src2 = (src2 + 2) >> 2;
    out0 = src0 * 0x01010101;
    out1 = src1 * 0x01010101;
    out2 = src2 * 0x01010101;
    out3 = src3 * 0x01010101;
    store0 = ((uint64_t) out1 << 32) | out0;
    store1 = ((uint64_t) out3 << 32) | out2;

    FUNC1(store0, store0, store0, store0, src, stride);
    src += (4 * stride);
    FUNC1(store1, store1, store1, store1, src, stride);
}