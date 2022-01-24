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
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 

void FUNC1(void **sp) {
    int i;
    for (i = 15; i >= 0; i--) {
        unsigned long addr = (unsigned long) sp+i;
        unsigned long val = (unsigned long) sp[i];

        if (sizeof(long) == 4)
            FUNC0(LL_WARNING, "(%08lx) -> %08lx", addr, val);
        else
            FUNC0(LL_WARNING, "(%016lx) -> %016lx", addr, val);
    }
}