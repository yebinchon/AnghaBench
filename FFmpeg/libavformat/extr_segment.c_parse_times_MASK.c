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
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__* FUNC4 (int,int) ; 
 int FUNC5 (scalar_t__*,char*,int) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC8(void *log_ctx, int64_t **times, int *nb_times,
                       const char *times_str)
{
    char *p;
    int i, ret = 0;
    char *times_str1 = FUNC6(times_str);
    char *saveptr = NULL;

    if (!times_str1)
        return FUNC0(ENOMEM);

#define FAIL(err) ret = err; goto end

    *nb_times = 1;
    for (p = times_str1; *p; p++)
        if (*p == ',')
            (*nb_times)++;

    *times = FUNC4(*nb_times, sizeof(**times));
    if (!*times) {
        FUNC3(log_ctx, AV_LOG_ERROR, "Could not allocate forced times array\n");
        FAIL(FUNC0(ENOMEM));
    }

    p = times_str1;
    for (i = 0; i < *nb_times; i++) {
        int64_t t;
        char *tstr = FUNC7(p, ",", &saveptr);
        p = NULL;

        if (!tstr || !tstr[0]) {
            FUNC3(log_ctx, AV_LOG_ERROR, "Empty time specification in times list %s\n",
                   times_str);
            FAIL(FUNC0(EINVAL));
        }

        ret = FUNC5(&t, tstr, 1);
        if (ret < 0) {
            FUNC3(log_ctx, AV_LOG_ERROR,
                   "Invalid time duration specification '%s' in times list %s\n", tstr, times_str);
            FAIL(FUNC0(EINVAL));
        }
        (*times)[i] = t;

        /* check on monotonicity */
        if (i && (*times)[i-1] > (*times)[i]) {
            FUNC3(log_ctx, AV_LOG_ERROR,
                   "Specified time %f is greater than the following time %f\n",
                   (float)((*times)[i])/1000000, (float)((*times)[i-1])/1000000);
            FAIL(FUNC0(EINVAL));
        }
    }

end:
    FUNC2(times_str1);
    return ret;
}