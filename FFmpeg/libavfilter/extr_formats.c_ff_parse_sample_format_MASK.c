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
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_SAMPLE_FMT_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 

int FUNC5(int *ret, const char *arg, void *log_ctx)
{
    char *tail;
    int sfmt = FUNC2(arg);
    if (sfmt == AV_SAMPLE_FMT_NONE) {
        sfmt = FUNC4(arg, &tail, 0);
        if (*tail || FUNC1(sfmt)<=0) {
            FUNC3(log_ctx, AV_LOG_ERROR, "Invalid sample format '%s'\n", arg);
            return FUNC0(EINVAL);
        }
    }
    *ret = sfmt;
    return 0;
}