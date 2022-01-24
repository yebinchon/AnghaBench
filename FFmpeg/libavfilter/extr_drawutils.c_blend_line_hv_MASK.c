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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/  const*,int,int,int,int,unsigned int,int) ; 

__attribute__((used)) static void FUNC1(uint8_t *dst, int dst_delta,
                          unsigned src, unsigned alpha,
                          const uint8_t *mask, int mask_linesize, int l2depth, int w,
                          unsigned hsub, unsigned vsub,
                          int xm, int left, int right, int hband)
{
    int x;

    if (left) {
        FUNC0(dst, src, alpha, mask, mask_linesize, l2depth,
                    left, hband, hsub + vsub, xm);
        dst += dst_delta;
        xm += left;
    }
    for (x = 0; x < w; x++) {
        FUNC0(dst, src, alpha, mask, mask_linesize, l2depth,
                    1 << hsub, hband, hsub + vsub, xm);
        dst += dst_delta;
        xm += 1 << hsub;
    }
    if (right)
        FUNC0(dst, src, alpha, mask, mask_linesize, l2depth,
                    right, hband, hsub + vsub, xm);
}