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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int FUNC1 (char const*) ; 

uint64_t FUNC2(const char *name)
{
    const char *n, *e;
    const char *name_end = name + FUNC1(name);
    int64_t layout = 0, layout_single;

    for (n = name; n < name_end; n = e + 1) {
        for (e = n; e < name_end && *e != '+' && *e != '|'; e++);
        layout_single = FUNC0(n, e - n);
        if (!layout_single)
            return 0;
        layout |= layout_single;
    }
    return layout;
}