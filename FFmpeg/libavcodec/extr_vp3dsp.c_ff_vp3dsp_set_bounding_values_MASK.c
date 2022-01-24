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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

void FUNC2(int * bounding_values_array, int filter_limit)
{
    int *bounding_values = bounding_values_array + 127;
    int x;
    int value;

    FUNC0(filter_limit < 128U);

    /* set up the bounding values */
    FUNC1(bounding_values_array, 0, 256 * sizeof(int));
    for (x = 0; x < filter_limit; x++) {
        bounding_values[-x] = -x;
        bounding_values[x] = x;
    }
    for (x = value = filter_limit; x < 128 && value; x++, value--) {
        bounding_values[ x] =  value;
        bounding_values[-x] = -value;
    }
    if (value)
        bounding_values[128] = value;
    bounding_values[129] = bounding_values[130] = filter_limit * 0x02020202;
}