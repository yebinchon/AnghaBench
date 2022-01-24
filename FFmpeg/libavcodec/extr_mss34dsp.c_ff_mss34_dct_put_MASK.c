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
 int /*<<< orphan*/  FUNC0 (int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SOP_COL ; 
 int /*<<< orphan*/  SOP_ROW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(uint8_t *dst, ptrdiff_t stride, int *block)
{
    int i, j;
    int *ptr;

    ptr = block;
    for (i = 0; i < 8; i++) {
        FUNC0(ptr, 1, SOP_ROW, 13);
        ptr += 8;
    }

    ptr = block;
    for (i = 0; i < 8; i++) {
        FUNC0(ptr, 8, SOP_COL, 22);
        ptr++;
    }

    ptr = block;
    for (j = 0; j < 8; j++) {
        for (i = 0; i < 8; i++)
            dst[i] = FUNC1(ptr[i] + 128);
        dst += stride;
        ptr += 8;
    }
}