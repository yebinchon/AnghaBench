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
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC1(uint8_t *dst, int16_t block[4][16],
                               ptrdiff_t stride)
{
    FUNC0(dst, &block[0][0], stride);
    FUNC0(dst + 4, &block[1][0], stride);
    FUNC0(dst + stride * 4, &block[2][0], stride);
    FUNC0(dst + stride * 4 + 4, &block[3][0], stride);
}