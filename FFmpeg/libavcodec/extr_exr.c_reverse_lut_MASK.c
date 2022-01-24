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
typedef  int uint16_t ;

/* Variables and functions */
 int USHORT_RANGE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint16_t FUNC1(const uint8_t *bitmap, uint16_t *lut)
{
    int i, k = 0;

    for (i = 0; i < USHORT_RANGE; i++)
        if ((i == 0) || (bitmap[i >> 3] & (1 << (i & 7))))
            lut[k++] = i;

    i = k - 1;

    FUNC0(lut + k, 0, (USHORT_RANGE - k) * 2);

    return i;
}