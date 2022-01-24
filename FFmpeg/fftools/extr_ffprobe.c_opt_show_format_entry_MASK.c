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
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int FUNC4 (void*,char const*,char*) ; 

__attribute__((used)) static int FUNC5(void *optctx, const char *opt, const char *arg)
{
    char *buf = FUNC1("format=%s", arg);
    int ret;

    if (!buf)
        return FUNC0(ENOMEM);

    FUNC3(NULL, AV_LOG_WARNING,
           "Option '%s' is deprecated, use '-show_entries format=%s' instead\n",
           opt, arg);
    ret = FUNC4(optctx, opt, buf);
    FUNC2(buf);
    return ret;
}