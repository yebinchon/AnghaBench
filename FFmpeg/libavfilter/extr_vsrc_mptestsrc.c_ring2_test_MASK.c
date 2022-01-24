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
typedef  int uint8_t ;

/* Variables and functions */
 double FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(uint8_t *dst, int dst_linesize, int off)
{
    int x, y;

    for (y = 0; y < 16*16; y++) {
        for (x = 0; x < 16*16; x++) {
            double d = FUNC0(x-8*16, y-8*16);
            double r = d/20 - (int)(d/20);
            if (r < off/30.0) {
                dst[x + y*dst_linesize]     = 255;
                dst[x + y*dst_linesize+256] = 0;
            } else {
                dst[x + y*dst_linesize]     = x;
                dst[x + y*dst_linesize+256] = x;
            }
        }
    }
}