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
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline void FUNC1(uint8_t *dst, const uint8_t *src, ptrdiff_t dstStride, ptrdiff_t srcStride, int h)
{
    int i;
    for (i = 0; i < h; i++) {
        FUNC0(dst, src);
        dst[8] = src[8];
        dst   += dstStride;
        src   += srcStride;
    }
}