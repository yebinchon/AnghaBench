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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 

int32_t FUNC1(const char *path1, const char *path2, uint8_t ignore_case)
{
    do
    {
        if ((*path1 == '\\' && *path2 == '/') ||
            (*path2 == '\\' && *path1 == '/'))
        {
            /* Ignore comparison of path slashes */
        }
        else if (ignore_case)
        {
            if (FUNC0(*path1) != FUNC0(*path2))
                break;
        }
        else if (*path1 != *path2)
        {
            break;
        }

        path1 += 1;
        path2 += 1;
    }
    while (*path1 != 0 && *path2 != 0);

    if (ignore_case)
        return (int32_t)(FUNC0(*path1) - FUNC0(*path2));

    return (int32_t)(*path1 - *path2);
}