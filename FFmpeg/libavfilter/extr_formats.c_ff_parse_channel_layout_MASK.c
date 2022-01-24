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
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (char const*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC3(int64_t *ret, int *nret, const char *arg,
                            void *log_ctx)
{
    int64_t chlayout;
    int nb_channels;

    if (FUNC1(arg, &chlayout, &nb_channels) < 0) {
        FUNC2(log_ctx, AV_LOG_ERROR, "Invalid channel layout '%s'\n", arg);
        return FUNC0(EINVAL);
    }
    if (!chlayout && !nret) {
        FUNC2(log_ctx, AV_LOG_ERROR, "Unknown channel layout '%s' is not supported.\n", arg);
        return FUNC0(EINVAL);
    }
    *ret = chlayout;
    if (nret)
        *nret = nb_channels;

    return 0;
}