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
 int FUNC0 (float) ; 
 float FUNC1 (float) ; 

__attribute__((used)) static void FUNC2(uint8_t *dst, int width,
                           float scale, float delta, const int *const matrix,
                           const uint8_t *c[], int peak, int radius,
                           int dstride, int stride)
{
    int x;

    for (x = 0; x < width; x++) {
        float suma = c[0][x] *  1 + c[1][x] * -1;
        float sumb = c[4][x] *  1 + c[3][x] * -1;

        dst[x] = FUNC0(FUNC1(suma*suma + sumb*sumb) * scale + delta);
    }
}