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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 

void FUNC1(uint8_t *dstU, uint8_t *dstV,
        ptrdiff_t stride, int flim_E, int flim_I, int hev_thresh)
{
    FUNC0(dstU, stride, flim_E, flim_I, hev_thresh);
    FUNC0(dstV, stride, flim_E, flim_I, hev_thresh);
}