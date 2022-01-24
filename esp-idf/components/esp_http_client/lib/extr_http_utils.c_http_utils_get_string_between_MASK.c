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
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char const*) ; 

char *FUNC5(const char *str, const char *begin, const char *end)
{
    char *found = FUNC4(str, begin);
    char *ret = NULL;
    if (found) {
        found += FUNC3(begin);
        char *found_end = FUNC4(found, end);
        if (found_end) {
            ret = FUNC0(1, found_end - found + 1);
            FUNC1(ret);
            FUNC2(ret, found, found_end - found);
            return ret;
        }
    }
    return NULL;
}