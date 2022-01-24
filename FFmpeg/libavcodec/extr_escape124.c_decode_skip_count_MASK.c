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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned FUNC3(GetBitContext* gb)
{
    unsigned value;
    // This function reads a maximum of 23 bits,
    // which is within the padding space
    if (FUNC2(gb) < 1)
        return -1;
    value = FUNC1(gb);
    if (!value)
        return value;

    value += FUNC0(gb, 3);
    if (value != (1 + ((1 << 3) - 1)))
        return value;

    value += FUNC0(gb, 7);
    if (value != (1 + ((1 << 3) - 1)) + ((1 << 7) - 1))
        return value;

    return value + FUNC0(gb, 12);
}