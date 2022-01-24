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
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 long INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC4 (int,int) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char*,char*,char**) ; 
 long FUNC7 (char*,char**,int) ; 

__attribute__((used)) static int FUNC8(void *log_ctx, int **frames, int *nb_frames,
                        const char *frames_str)
{
    char *p;
    int i, ret = 0;
    char *frames_str1 = FUNC5(frames_str);
    char *saveptr = NULL;

    if (!frames_str1)
        return FUNC0(ENOMEM);

#define FAIL(err) ret = err; goto end

    *nb_frames = 1;
    for (p = frames_str1; *p; p++)
        if (*p == ',')
            (*nb_frames)++;

    *frames = FUNC4(*nb_frames, sizeof(**frames));
    if (!*frames) {
        FUNC3(log_ctx, AV_LOG_ERROR, "Could not allocate forced frames array\n");
        FAIL(FUNC0(ENOMEM));
    }

    p = frames_str1;
    for (i = 0; i < *nb_frames; i++) {
        long int f;
        char *tailptr;
        char *fstr = FUNC6(p, ",", &saveptr);

        p = NULL;
        if (!fstr) {
            FUNC3(log_ctx, AV_LOG_ERROR, "Empty frame specification in frame list %s\n",
                   frames_str);
            FAIL(FUNC0(EINVAL));
        }
        f = FUNC7(fstr, &tailptr, 10);
        if (*tailptr || f <= 0 || f >= INT_MAX) {
            FUNC3(log_ctx, AV_LOG_ERROR,
                   "Invalid argument '%s', must be a positive integer <= INT64_MAX\n",
                   fstr);
            FAIL(FUNC0(EINVAL));
        }
        (*frames)[i] = f;

        /* check on monotonicity */
        if (i && (*frames)[i-1] > (*frames)[i]) {
            FUNC3(log_ctx, AV_LOG_ERROR,
                   "Specified frame %d is greater than the following frame %d\n",
                   (*frames)[i], (*frames)[i-1]);
            FAIL(FUNC0(EINVAL));
        }
    }

end:
    FUNC2(frames_str1);
    return ret;
}