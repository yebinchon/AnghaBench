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

__attribute__((used)) static int FUNC1(GetBitContext *gb)
{
    int i;

    switch (FUNC0(gb, 2)) {
    case 3:
        return 1;
    case 2:
        for (i = 0; i < 4; i++)
            if (FUNC0(gb, 2) != 3)
                return 0;
        return 4;
    default:
        return 0;
    }
}