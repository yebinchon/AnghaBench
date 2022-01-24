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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int,int,int) ; 

inline void FUNC1(uint8_t *dst, const uint8_t *src1,
    const uint8_t *src2, int dst_stride, int src_stride1, int src_stride2,
    int h)
{
    FUNC0(dst, src1, src2, dst_stride, src_stride1,
            src_stride2, h);
    FUNC0(dst + 8, src1 + 8, src2 + 8, dst_stride,
            src_stride1, src_stride2, h);
}