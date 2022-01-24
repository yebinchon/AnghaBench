#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int fps; int start; int /*<<< orphan*/  rate; } ;
typedef  TYPE_1__ AVTimecode ;
typedef  int /*<<< orphan*/  AVRational ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_TIMECODE_FLAG_DROPFRAME ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (void*,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,char*,int*,int*,int*,char*,int*) ; 

int FUNC5(AVTimecode *tc, AVRational rate, const char *str, void *log_ctx)
{
    char c;
    int hh, mm, ss, ff, ret;

    if (FUNC4(str, "%d:%d:%d%c%d", &hh, &mm, &ss, &c, &ff) != 5) {
        FUNC0(log_ctx, AV_LOG_ERROR, "Unable to parse timecode, "
                                      "syntax: hh:mm:ss[:;.]ff\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC3(tc, 0, sizeof(*tc));
    tc->flags = c != ':' ? AV_TIMECODE_FLAG_DROPFRAME : 0; // drop if ';', '.', ...
    tc->rate  = rate;
    tc->fps   = FUNC2(rate);

    ret = FUNC1(log_ctx, tc);
    if (ret < 0)
        return ret;

    tc->start = (hh*3600 + mm*60 + ss) * tc->fps + ff;
    if (tc->flags & AV_TIMECODE_FLAG_DROPFRAME) { /* adjust frame number */
        int tmins = 60*hh + mm;
        tc->start -= (tc->fps == 30 ? 2 : 4) * (tmins - tmins/10);
    }
    return 0;
}