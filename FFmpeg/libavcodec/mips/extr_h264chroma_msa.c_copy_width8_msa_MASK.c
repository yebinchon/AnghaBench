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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(uint8_t *src, uint8_t *dst, int32_t stride,
                            int32_t height)
{
    uint64_t src0, src1, src2, src3, src4, src5, src6, src7;

    if (8 == height) {
        FUNC0(src, stride, src0, src1, src2, src3);
        src += 4 * stride;
        FUNC0(src, stride, src4, src5, src6, src7);
        FUNC1(src0, src1, src2, src3, dst, stride);
        dst += 4 * stride;
        FUNC1(src4, src5, src6, src7, dst, stride);
    } else if (4 == height) {
        FUNC0(src, stride, src0, src1, src2, src3);
        FUNC1(src0, src1, src2, src3, dst, stride);
    }
}