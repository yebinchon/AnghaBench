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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  WHITESPACES ; 
 char* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char **ropts, const char *delim, char **rkey)
{
    const char *opts = *ropts;
    const char *key_start, *key_end;

    key_start = opts += FUNC5(opts, WHITESPACES);
    while (FUNC2(*opts))
        opts++;
    key_end = opts;
    opts += FUNC5(opts, WHITESPACES);
    if (!*opts || !FUNC4(delim, *opts))
        return FUNC0(EINVAL);
    opts++;
    if (!(*rkey = FUNC1(key_end - key_start + 1)))
        return FUNC0(ENOMEM);
    FUNC3(*rkey, key_start, key_end - key_start);
    (*rkey)[key_end - key_start] = 0;
    *ropts = opts;
    return 0;
}