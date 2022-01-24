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
typedef  int time_t ;
struct tm {int dummy; } ;
struct stat {double st_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkLabel ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  GHB_QUEUE_CANCELED 132 
#define  GHB_QUEUE_DONE 131 
#define  GHB_QUEUE_FAIL 130 
#define  GHB_QUEUE_PENDING 129 
#define  GHB_QUEUE_RUNNING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 char* FUNC6 (char const*,double,...) ; 
 int /*<<< orphan*/  FUNC7 (int,int*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tm* FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,struct tm*) ; 

void
FUNC15(GhbValue * queueDict, signal_user_data_t *ud)
{
    GhbValue * uiDict;
    GtkLabel * label;

    uiDict = FUNC8(queueDict, "uiSettings");
    if (uiDict == NULL) // should never happen
    {
        return;
    }

    label = FUNC1(FUNC0(ud->builder, "queue_stats_pass_label"));
    FUNC12(FUNC2(label), FALSE);
    label = FUNC1(FUNC0(ud->builder, "queue_stats_pass"));
    FUNC12(FUNC2(label), FALSE);

    const char * result = "";
    int status = FUNC9(uiDict, "job_status");

    if (status == GHB_QUEUE_PENDING)
    {
        label = FUNC1(FUNC0(ud->builder, "queue_stats_start_time"));
        FUNC11(label, "");
        label = FUNC1(FUNC0(ud->builder, "queue_stats_finish_time"));
        FUNC11(label, "");
        label = FUNC1(FUNC0(ud->builder, "queue_stats_paused"));
        FUNC11(label, "");
        label = FUNC1(FUNC0(ud->builder, "queue_stats_encode"));
        FUNC11(label, "");
        label = FUNC1(FUNC0(ud->builder, "queue_stats_file_size"));
        FUNC11(label, "");
        label = FUNC1(FUNC0(ud->builder, "queue_stats_result"));
        FUNC11(label, "Pending");
        return;
    }

    switch (status)
    {
        case GHB_QUEUE_RUNNING:
            // This job is running.
            // ghb_queue_update_live_stats() will update stats
            return;

        case GHB_QUEUE_DONE:
            result = FUNC3("Completed");
            break;

        case GHB_QUEUE_CANCELED:
            result = FUNC3("Canceled");
            break;

        case GHB_QUEUE_FAIL:
            result = FUNC3("Failed");
            break;

        case GHB_QUEUE_PENDING:
        default:
            result = FUNC3("Pending");
            break;
    }

    struct tm  * tm;
    char         date[40] = "";
    char       * str;
    time_t       start, finish, paused, duration;

    start  = FUNC9(uiDict, "job_start_time");
    finish = FUNC9(uiDict, "job_finish_time");
    paused = FUNC9(uiDict, "job_pause_time_ms") / 1000;

    tm     = FUNC13( &start );
    FUNC14(date, 40, "%c", tm);
    label = FUNC1(FUNC0(ud->builder, "queue_stats_start_time"));
    FUNC11(label, date);

    tm  = FUNC13( &finish );
    FUNC14(date, 40, "%c", tm);
    label = FUNC1(FUNC0(ud->builder, "queue_stats_finish_time"));
    FUNC11(label, date);

    int dd = 0, hh, mm, ss;
    FUNC7(paused, &hh, &mm, &ss);
    if (hh >= 24)
    {
        dd = hh / 24;
        hh = hh - dd * 24;
    }
    switch (dd)
    {
        case 0:
            str = FUNC6("%02d:%02d:%02d", hh, mm, ss);
            break;
        case 1:
            str = FUNC6(FUNC3("%d Day %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
        default:
            str = FUNC6(FUNC3("%d Days %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
    }
    label = FUNC1(FUNC0(ud->builder, "queue_stats_paused"));
    FUNC11(label, str);
    FUNC4(str);

    duration = finish - start;
    if (duration < 0)
    {
        duration = 0;
    }
    dd = 0;
    FUNC7(duration, &hh, &mm, &ss);
    if (hh >= 24)
    {
        dd = hh / 24;
        hh = hh - dd * 24;
    }
    switch (dd)
    {
        case 0:
            str = FUNC6("%02d:%02d:%02d", hh, mm, ss);
            break;
        case 1:
            str = FUNC6(FUNC3("%d Day %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
        default:
            str = FUNC6(FUNC3("%d Days %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
    }
    label = FUNC1(FUNC0(ud->builder, "queue_stats_encode"));
    FUNC11(label, str);
    FUNC4(str);

    const char  * path;
    struct stat   stbuf;

    path = FUNC10(uiDict, "destination");
    if (FUNC5(path, &stbuf) == 0)
    {
        const char * units = FUNC3("B");
        double size = stbuf.st_size;
        if (size > 1024)
        {
            units = FUNC3("KB");
            size /= 1024.0;
        }
        if (size > 1024)
        {
            units = FUNC3("MB");
            size /= 1024.0;
        }
        if (size > 1024)
        {
            units = FUNC3("GB");
            size /= 1024.0;
        }
        str = FUNC6("%.2f %s", size, units);
        label = FUNC1(FUNC0(ud->builder, "queue_stats_file_size"));
        FUNC11(label, str);
        FUNC4(str);
    }
    else
    {
        label = FUNC1(FUNC0(ud->builder, "queue_stats_file_size"));
        FUNC11(label, FUNC3("Not Available"));
    }

    label = FUNC1(FUNC0(ud->builder, "queue_stats_result"));
    FUNC11(label, result);
}