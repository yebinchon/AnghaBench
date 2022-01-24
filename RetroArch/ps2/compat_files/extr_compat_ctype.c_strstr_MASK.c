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
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*,char const*,scalar_t__) ; 

char *FUNC2(const char *string, const char *substring)
{
    char *strpos;

    if (string == 0)
        return 0;

    if (FUNC0(substring) == 0)
        return (char *)string;

    strpos = (char *)string;

    while (*strpos != 0) {
        if (FUNC1(strpos, substring, FUNC0(substring)) == 0)
            return strpos;

        strpos++;
    }

    return 0;
}