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
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 float const S16_SCALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float const) ; 

__attribute__((used)) static void FUNC2(int16_t *dst, const float *src, float *dither, int len)
{
    int i;
    for (i = 0; i < len; i++)
        dst[i] = FUNC0(FUNC1(src[i] * S16_SCALE + dither[i]));
}