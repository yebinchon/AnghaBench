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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

void FUNC4(uint8_t *dst, ptrdiff_t stride,
        int flim_E, int flim_I, int hev_thresh)
{
    int i;

    for (i = 0; i < 16; i++)
        if (FUNC3(dst + i * 1, stride, flim_E, flim_I)) {
            int hv = FUNC0(dst + i * 1, stride, hev_thresh);
            if (hv)
                FUNC1(dst + i * 1, stride);
            else
                FUNC2(dst + i * 1, stride);
        }
}