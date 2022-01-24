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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int FUNC2 (char const*) ; 

char *FUNC3(const char *str)
{
    size_t size = FUNC2(str) + 1;  // + 1 for the null terminator
    char *new_string = (char *)FUNC1(size);

    if (!new_string) {
        return NULL;
    }

    FUNC0(new_string, str, size);
    return new_string;
}