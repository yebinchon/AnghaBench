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
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (char const*,char**,int) ; 

int FUNC4(void *optctx, const char *opt, const char *arg)
{
    char *tail;
    size_t max;

    max = FUNC3(arg, &tail, 10);
    if (*tail) {
        FUNC0(NULL, AV_LOG_FATAL, "Invalid max_alloc \"%s\".\n", arg);
        FUNC2(1);
    }
    FUNC1(max);
    return 0;
}