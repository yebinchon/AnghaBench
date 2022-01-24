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
 int FUNC0 (char const) ; 

__attribute__((used)) static int FUNC1(const char *a, const char *b)
{
    const char *start = a;
    int ascii_diff, digit_diff;

    for (; !(ascii_diff = *(const unsigned char*)a - *(const unsigned char*)b) && *a; a++, b++);
    for (; FUNC0(*a) && FUNC0(*b); a++, b++);

    if (a > start && FUNC0(a[-1]) && (digit_diff = FUNC0(*a) - FUNC0(*b)))
        return digit_diff;

    return ascii_diff;
}