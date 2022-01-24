#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int index; scalar_t__ start_ts; scalar_t__ end_ts; int /*<<< orphan*/  nb_commands; int /*<<< orphan*/  commands; } ;
typedef  TYPE_1__ Interval ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  DELIMS ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ INT64_MAX ; 
 int /*<<< orphan*/  SPACES ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (scalar_t__*,char*,int) ; 
 char* FUNC5 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const**,void*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(Interval *interval, int interval_count,
                          const char **buf, void *log_ctx)
{
    char *intervalstr;
    int ret;

    *buf += FUNC8(*buf, SPACES);
    if (!**buf)
        return 0;

    /* reset data */
    FUNC6(interval, 0, sizeof(Interval));
    interval->index = interval_count;

    /* format: INTERVAL COMMANDS */

    /* parse interval */
    intervalstr = FUNC2(buf, DELIMS);
    if (intervalstr && intervalstr[0]) {
        char *start, *end;

        start = FUNC5(intervalstr, "-", &end);
        if (!start) {
            ret = FUNC0(EINVAL);
            FUNC3(log_ctx, AV_LOG_ERROR,
                   "Invalid interval specification '%s' in interval #%d\n",
                   intervalstr, interval_count);
            goto end;
        }
        if ((ret = FUNC4(&interval->start_ts, start, 1)) < 0) {
            FUNC3(log_ctx, AV_LOG_ERROR,
                   "Invalid start time specification '%s' in interval #%d\n",
                   start, interval_count);
            goto end;
        }

        if (end) {
            if ((ret = FUNC4(&interval->end_ts, end, 1)) < 0) {
                FUNC3(log_ctx, AV_LOG_ERROR,
                       "Invalid end time specification '%s' in interval #%d\n",
                       end, interval_count);
                goto end;
            }
        } else {
            interval->end_ts = INT64_MAX;
        }
        if (interval->end_ts < interval->start_ts) {
            FUNC3(log_ctx, AV_LOG_ERROR,
                   "Invalid end time '%s' in interval #%d: "
                   "cannot be lesser than start time '%s'\n",
                   end, interval_count, start);
            ret = FUNC0(EINVAL);
            goto end;
        }
    } else {
        FUNC3(log_ctx, AV_LOG_ERROR,
               "No interval specified for interval #%d\n", interval_count);
        ret = FUNC0(EINVAL);
        goto end;
    }

    /* parse commands */
    ret = FUNC7(&interval->commands, &interval->nb_commands,
                         interval_count, buf, log_ctx);

end:
    FUNC1(intervalstr);
    return ret;
}