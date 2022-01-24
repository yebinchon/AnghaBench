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
 scalar_t__ FUNC0 (unsigned char) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(char *str)
{
    while (FUNC0((unsigned char)(*str))) {
        ++str;
    }

    if (!*str) {
        return str;
    }

    char *end_str = str + FUNC1(str) - 1;
    while (end_str > str && FUNC0((unsigned char)(*end_str))) {
        --end_str;
    }

    end_str[1] = '\0';
    return str;
}