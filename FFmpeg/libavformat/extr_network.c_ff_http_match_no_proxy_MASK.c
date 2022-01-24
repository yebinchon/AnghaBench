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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int FUNC5(const char *no_proxy, const char *hostname)
{
    char *buf, *start;
    int ret = 0;
    if (!no_proxy)
        return 0;
    if (!hostname)
        return 0;
    buf = FUNC1(no_proxy);
    if (!buf)
        return 0;
    start = buf;
    while (start) {
        char *sep, *next = NULL;
        start += FUNC4(start, " ,");
        sep = start + FUNC3(start, " ,");
        if (*sep) {
            next = sep + 1;
            *sep = '\0';
        }
        if (FUNC2(start, hostname)) {
            ret = 1;
            break;
        }
        start = next;
    }
    FUNC0(buf);
    return ret;
}