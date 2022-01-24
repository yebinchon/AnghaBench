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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC3(void *dest, const char *buf, int len)
{
    char *str = FUNC1(len + 1);
    if (str) {
        FUNC2(str, buf, len);
        str[len] = 0;
        if (*(void **)dest)
            FUNC0(*(void **)dest);
        *(char **)dest = str;
    }
    return !str;
}