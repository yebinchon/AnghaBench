#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  long long int64_t ;
struct TYPE_3__ {int has_start; int start_is_offset; long long start; int has_end; int end_is_offset; int duration_frames; long long end; } ;
typedef  TYPE_1__ ReadInterval ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (long long*,char*,int) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char) ; 
 long long FUNC6 (char*,char**,int) ; 

__attribute__((used)) static int FUNC7(const char *interval_spec,
                               ReadInterval *interval)
{
    int ret = 0;
    char *next, *p, *spec = FUNC4(interval_spec);
    if (!spec)
        return FUNC0(ENOMEM);

    if (!*spec) {
        FUNC2(NULL, AV_LOG_ERROR, "Invalid empty interval specification\n");
        ret = FUNC0(EINVAL);
        goto end;
    }

    p = spec;
    next = FUNC5(spec, '%');
    if (next)
        *next++ = 0;

    /* parse first part */
    if (*p) {
        interval->has_start = 1;

        if (*p == '+') {
            interval->start_is_offset = 1;
            p++;
        } else {
            interval->start_is_offset = 0;
        }

        ret = FUNC3(&interval->start, p, 1);
        if (ret < 0) {
            FUNC2(NULL, AV_LOG_ERROR, "Invalid interval start specification '%s'\n", p);
            goto end;
        }
    } else {
        interval->has_start = 0;
    }

    /* parse second part */
    p = next;
    if (p && *p) {
        int64_t us;
        interval->has_end = 1;

        if (*p == '+') {
            interval->end_is_offset = 1;
            p++;
        } else {
            interval->end_is_offset = 0;
        }

        if (interval->end_is_offset && *p == '#') {
            long long int lli;
            char *tail;
            interval->duration_frames = 1;
            p++;
            lli = FUNC6(p, &tail, 10);
            if (*tail || lli < 0) {
                FUNC2(NULL, AV_LOG_ERROR,
                       "Invalid or negative value '%s' for duration number of frames\n", p);
                goto end;
            }
            interval->end = lli;
        } else {
            interval->duration_frames = 0;
            ret = FUNC3(&us, p, 1);
            if (ret < 0) {
                FUNC2(NULL, AV_LOG_ERROR, "Invalid interval end/duration specification '%s'\n", p);
                goto end;
            }
            interval->end = us;
        }
    } else {
        interval->has_end = 0;
    }

end:
    FUNC1(spec);
    return ret;
}