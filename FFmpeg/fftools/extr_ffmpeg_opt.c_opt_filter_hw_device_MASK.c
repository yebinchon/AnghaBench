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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ filter_hw_device ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(void *optctx, const char *opt, const char *arg)
{
    if (filter_hw_device) {
        FUNC1(NULL, AV_LOG_ERROR, "Only one filter device can be used.\n");
        return FUNC0(EINVAL);
    }
    filter_hw_device = FUNC2(arg);
    if (!filter_hw_device) {
        FUNC1(NULL, AV_LOG_ERROR, "Invalid filter device %s.\n", arg);
        return FUNC0(EINVAL);
    }
    return 0;
}