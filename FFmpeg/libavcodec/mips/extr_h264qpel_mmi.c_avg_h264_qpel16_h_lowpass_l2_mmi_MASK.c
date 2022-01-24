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
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static void FUNC1(uint8_t *dst, const uint8_t *src,
        const uint8_t *src2, ptrdiff_t dstStride, ptrdiff_t src2Stride)
{
    FUNC0(dst, src, src2, dstStride, src2Stride);
    FUNC0(dst + 8, src + 8, src2 + 8, dstStride,
            src2Stride);

    src += 8 * dstStride;
    dst += 8 * dstStride;
    src2 += 8 * src2Stride;

    FUNC0(dst, src, src2, dstStride, src2Stride);
    FUNC0(dst + 8, src + 8, src2 + 8, dstStride,
            src2Stride);
}