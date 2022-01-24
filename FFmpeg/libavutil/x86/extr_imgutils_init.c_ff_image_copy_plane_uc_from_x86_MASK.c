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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(uint8_t       *dst, ptrdiff_t dst_linesize,
                                    const uint8_t *src, ptrdiff_t src_linesize,
                                    ptrdiff_t bytewidth, int height)
{
    int cpu_flags = FUNC3();
    ptrdiff_t bw_aligned = FUNC2(bytewidth, 64);

    if (FUNC1(cpu_flags) &&
        bw_aligned <= dst_linesize && bw_aligned <= src_linesize)
        FUNC4(dst, dst_linesize, src, src_linesize,
                                         bw_aligned, height);
    else
        return FUNC0(ENOSYS);

    return 0;
}