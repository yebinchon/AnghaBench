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
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char*,int) ; 
 int FUNC4 (char const*) ; 

char *FUNC5(char **str, const char *new_str, int len)
{
    int l = len;
    if (new_str == NULL) {
        return NULL;
    }
    char *old_str = *str;
    if (l <= 0) {
        l = FUNC4(new_str);
    }
    if (old_str) {
        old_str = FUNC3(old_str, l + 1);
        FUNC1(old_str);
        old_str[l] = 0;
    } else {
        old_str = FUNC0(1, l + 1);
        FUNC1(old_str);
    }
    FUNC2(old_str, new_str, l);
    *str = old_str;
    return old_str;
}