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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int PI_SEED ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int32_t FUNC3(uint8_t *buf, int32_t size)
{
    static unsigned calls = 0;
    int32_t i = 0;

    /* Ensure different random header each time */
    if (++calls == 1)
    {
        #define PI_SEED 3141592654UL
        FUNC1((unsigned)(FUNC2(NULL) ^ PI_SEED));
    }

    while (i < size)
        buf[i++] = (FUNC0() >> 7) & 0xff;

    return size;
}