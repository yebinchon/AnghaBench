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
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(GetBitContext* gb)
{
    int value;

    if (FUNC2(gb) < 1+3)
        return -1;

    value = FUNC1(gb);
    if (value)
        return 0;

    value = FUNC0(gb, 3);
    if (value)
        return value;

    value = FUNC0(gb, 8);
    if (value)
        return value + 7;

    value = FUNC0(gb, 15);
    if (value)
        return value + 262;

    return -1;
}