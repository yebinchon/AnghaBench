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
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int /*<<< orphan*/ ** bilinear_filters_msa ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

void FUNC2(uint8_t *dst, ptrdiff_t dst_stride,
                                uint8_t *src, ptrdiff_t src_stride,
                                int height, int mx, int my)
{
    const int8_t *filter = bilinear_filters_msa[mx - 1];

    if (4 == height) {
        FUNC0(src, src_stride, dst, dst_stride, filter);
    } else {
        FUNC1(src, src_stride, dst, dst_stride, filter,
                                 height);
    }
}