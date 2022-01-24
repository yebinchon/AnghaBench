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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int MAX_NEG_CROP ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int* ff_crop_tab ; 

__attribute__((used)) static void FUNC2(const uint8_t *ycbcr, const uint8_t *alpha, uint32_t *rgba, int num_values)
{
    const uint8_t *cm = ff_crop_tab + MAX_NEG_CROP;
    uint8_t r, g, b;
    int i, y, cb, cr;
    int r_add, g_add, b_add;

    for (i = num_values; i > 0; i--) {
        y = *ycbcr++;
        cr = *ycbcr++;
        cb = *ycbcr++;
        FUNC0(cb, cr);
        FUNC1(r, g, b, y);
        *rgba++ = ((unsigned)*alpha++ << 24) | (r << 16) | (g << 8) | b;
    }
}