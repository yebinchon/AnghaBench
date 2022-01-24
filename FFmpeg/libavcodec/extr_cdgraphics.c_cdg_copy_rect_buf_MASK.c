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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(int out_tl_x, int out_tl_y, uint8_t *out,
                              int in_tl_x, int in_tl_y, uint8_t *in,
                              int w, int h, int stride)
{
    int y;

    in  += in_tl_x  + in_tl_y  * stride;
    out += out_tl_x + out_tl_y * stride;
    for (y = 0; y < h; y++)
        FUNC0(out + y * stride, in + y * stride, w);
}