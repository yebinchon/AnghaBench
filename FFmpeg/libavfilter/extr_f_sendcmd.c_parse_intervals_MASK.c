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
typedef  int /*<<< orphan*/  Interval ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  SPACES ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char const**,void*) ; 
 int /*<<< orphan*/  FUNC5 (char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(Interval **intervals, int *nb_intervals,
                           const char *buf, void *log_ctx)
{
    int interval_count = 0;
    int ret, n = 0;

    *intervals = NULL;
    *nb_intervals = 0;

    if (!buf)
        return 0;

    while (1) {
        Interval interval;

        FUNC5(&buf);
        if (!(*buf))
            break;

        if ((ret = FUNC4(&interval, interval_count, &buf, log_ctx)) < 0)
            return ret;

        buf += FUNC6(buf, SPACES);
        if (*buf) {
            if (*buf != ';') {
                FUNC2(log_ctx, AV_LOG_ERROR,
                       "Missing terminator or extraneous data found at the end of interval #%d\n",
                       interval_count);
                return FUNC0(EINVAL);
            }
            buf++; /* skip ';' */
        }
        interval_count++;

        /* (re)allocate commands array if required */
        if (*nb_intervals == n) {
            n = FUNC1(16, 2*n); /* first allocation = 16, or double the number */
            *intervals = FUNC3(*intervals, n, 2*sizeof(Interval));
            if (!*intervals) {
                FUNC2(log_ctx, AV_LOG_ERROR,
                       "Could not (re)allocate intervals array\n");
                return FUNC0(ENOMEM);
            }
        }

        (*intervals)[(*nb_intervals)++] = interval;
    }

    return 0;
}