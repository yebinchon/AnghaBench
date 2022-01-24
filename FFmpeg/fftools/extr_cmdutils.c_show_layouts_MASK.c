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
typedef  int uint64_t ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int FUNC4(void *optctx, const char *opt, const char *arg)
{
    int i = 0;
    uint64_t layout, j;
    const char *name, *descr;

    FUNC3("Individual channels:\n"
           "NAME           DESCRIPTION\n");
    for (i = 0; i < 63; i++) {
        name = FUNC1((uint64_t)1 << i);
        if (!name)
            continue;
        descr = FUNC0((uint64_t)1 << i);
        FUNC3("%-14s %s\n", name, descr);
    }
    FUNC3("\nStandard channel layouts:\n"
           "NAME           DECOMPOSITION\n");
    for (i = 0; !FUNC2(i, &layout, &name); i++) {
        if (name) {
            FUNC3("%-14s ", name);
            for (j = 1; j; j <<= 1)
                if ((layout & j))
                    FUNC3("%s%s", (layout & (j - 1)) ? "+" : "", FUNC1(j));
            FUNC3("\n");
        }
    }
    return 0;
}