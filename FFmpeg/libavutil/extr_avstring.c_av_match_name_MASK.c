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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 
 char* FUNC2 (char const*,char) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

int FUNC5(const char *name, const char *names)
{
    const char *p;
    int len, namelen;

    if (!name || !names)
        return 0;

    namelen = FUNC3(name);
    while (*names) {
        int negate = '-' == *names;
        p = FUNC2(names, ',');
        if (!p)
            p = names + FUNC3(names);
        names += negate;
        len = FUNC0(p - names, namelen);
        if (!FUNC1(name, names, len) || !FUNC4("ALL", names, FUNC0(3, p - names)))
            return !negate;
        names = p + (*p == ',');
    }
    return 0;
}