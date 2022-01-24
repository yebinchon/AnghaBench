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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,size_t const) ; 
 size_t FUNC2 (char const*) ; 

const char *FUNC3(const char *s, const char *attr)
{
    int in_quotes = 0;
    const size_t len = FUNC2(attr);

    while (*s) {
        while (*s) {
            if (!in_quotes && FUNC0(*s))
                break;
            in_quotes ^= *s == '"'; // XXX: support escaping?
            s++;
        }
        while (FUNC0(*s))
            s++;
        if (!FUNC1(s, attr, len) && s[len] == '=')
            return s + len + 1 + (s[len + 1] == '"');
    }
    return NULL;
}