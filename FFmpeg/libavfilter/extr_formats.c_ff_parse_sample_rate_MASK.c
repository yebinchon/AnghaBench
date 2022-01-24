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
 int /*<<< orphan*/  EINVAL ; 
 double INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,char const*) ; 
 double FUNC2 (char const*,char**) ; 

int FUNC3(int *ret, const char *arg, void *log_ctx)
{
    char *tail;
    double srate = FUNC2(arg, &tail);
    if (*tail || srate < 1 || (int)srate != srate || srate > INT_MAX) {
        FUNC1(log_ctx, AV_LOG_ERROR, "Invalid sample rate '%s'\n", arg);
        return FUNC0(EINVAL);
    }
    *ret = srate;
    return 0;
}