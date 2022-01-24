#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct tm {int dummy; } ;
struct stat {double st_size; } ;
struct TYPE_9__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_10__ {int state; int eta_seconds; int paused; int pass_count; int pass_id; int error; int /*<<< orphan*/  pass; } ;
typedef  TYPE_2__ ghb_instance_status_t ;
struct TYPE_11__ {char const* str; } ;
typedef  int /*<<< orphan*/  GtkListBoxRow ;
typedef  int /*<<< orphan*/  GtkListBox ;
typedef  int /*<<< orphan*/  GtkLabel ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  TYPE_3__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  GHB_ERROR_CANCELED 134 
#define  GHB_ERROR_FAIL 133 
#define  GHB_ERROR_NONE 132 
 int GHB_STATE_SCANNING ; 
 int GHB_STATE_WORKDONE ; 
 int GHB_STATE_WORKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
#define  HB_PASS_ENCODE 131 
#define  HB_PASS_ENCODE_1ST 130 
#define  HB_PASS_ENCODE_2ND 129 
#define  HB_PASS_SUBTITLE 128 
 int /*<<< orphan*/  TRUE ; 
 char const* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,struct stat*) ; 
 char* FUNC7 (char const*,double,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char const*,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tm* FUNC21 (int*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,struct tm*) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 

void
FUNC24(signal_user_data_t * ud, int index, ghb_instance_status_t * status)
{
    int count = FUNC12(ud->queue);
    if (index < 0 || index >= count)
    {
        // invalid index
        return;
    }

    GtkListBox    * lb;
    GtkListBoxRow * row;

    lb = FUNC2(FUNC0(ud->builder, "queue_list"));
    row = FUNC18(lb);
    if (row == NULL || index != FUNC19(row))
    {
        return;
    }

    GhbValue * queueDict, * uiDict;
    queueDict = FUNC11(ud->queue, index);
    if (queueDict == NULL) // should never happen
    {
        return;
    }
    uiDict    = FUNC14(queueDict, "uiSettings");
    if (uiDict == NULL) // should never happen
    {
        return;
    }

    GString    * gstr = NULL;
    GtkLabel   * label;
    struct tm  * tm;
    char         date[40] = "";
    char       * str;
    const char * pass = "";
    const char * result = "";
    time_t       start, finish, paused, duration;

    start  = FUNC15(uiDict, "job_start_time");
    finish = FUNC23(NULL);
    if (status->state & GHB_STATE_WORKING)
    {
        finish += status->eta_seconds;
    }
    paused = status->paused / 1000;
    if ((status->state & GHB_STATE_WORKING) && status->pass_count > 1)
    {
        label = FUNC1(FUNC0(ud->builder, "queue_stats_pass_label"));
        FUNC20(FUNC3(label), TRUE);
        label = FUNC1(FUNC0(ud->builder, "queue_stats_pass"));
        FUNC20(FUNC3(label), TRUE);
        switch (status->pass_id)
        {
            case HB_PASS_SUBTITLE:
                pass = FUNC4("Foreign Audio Search");
                break;

            case HB_PASS_ENCODE:
                pass = FUNC4("Encode");
                break;

            case HB_PASS_ENCODE_1ST:
                pass = FUNC4("Encode First Pass (Analysis)");
                break;

            case HB_PASS_ENCODE_2ND:
                pass = FUNC4("Encode Second Pass (Final)");
                break;

            default:
                // Should never happen
                pass = FUNC4("Error");
                break;
        }
        gstr = FUNC10(NULL);
        FUNC8(gstr, FUNC4("pass %d of %d\n%s"), status->pass, status->pass_count, pass);
    }
    else
    {
        label = FUNC1(FUNC0(ud->builder, "queue_stats_pass_label"));
        FUNC20(FUNC3(label), FALSE);
        label = FUNC1(FUNC0(ud->builder, "queue_stats_pass"));
        FUNC20(FUNC3(label), FALSE);
    }

    if (status->state & GHB_STATE_SCANNING)
    {
        result = FUNC4("Scanning Title");
    }
    else if (status->state & GHB_STATE_SCANNING)
    {
        result = FUNC4("Encoding Paused");
    }
    else if (status->state & GHB_STATE_WORKING)
    {
        result = FUNC4("Encoding In Progress");
    }
    else if (status->state & GHB_STATE_WORKDONE)
    {
        switch (status->error)
        {
            case GHB_ERROR_NONE:
                result = FUNC4("Completed");
                break;

            case GHB_ERROR_CANCELED:
                result = FUNC4("Canceled");
                break;

            case GHB_ERROR_FAIL:
                result = FUNC4("Failed");
                break;

            default:
                // Should never happen
                result = FUNC4("Unknown");
                break;
        }
    }

    if (gstr != NULL)
    {
        label = FUNC1(FUNC0(ud->builder, "queue_stats_pass"));
        FUNC17(label, gstr->str);
        FUNC9(gstr, TRUE);
    }

    tm     = FUNC21( &start );
    FUNC22(date, 40, "%c", tm);
    label = FUNC1(FUNC0(ud->builder, "queue_stats_start_time"));
    FUNC17(label, date);

    tm  = FUNC21( &finish );
    FUNC22(date, 40, "%c", tm);
    label = FUNC1(FUNC0(ud->builder, "queue_stats_finish_time"));
    FUNC17(label, date);

    int dd = 0, hh, mm, ss;
    FUNC13(paused, &hh, &mm, &ss);
    if (hh >= 24)
    {
        dd = hh / 24;
        hh = hh - dd * 24;
    }
    switch (dd)
    {
        case 0:
            str = FUNC7("%02d:%02d:%02d", hh, mm, ss);
            break;
        case 1:
            str = FUNC7(FUNC4("%d Day %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
        default:
            str = FUNC7(FUNC4("%d Days %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
    }
    label = FUNC1(FUNC0(ud->builder, "queue_stats_paused"));
    FUNC17(label, str);
    FUNC5(str);

    duration = finish - start;
    if (duration < 0)
    {
        duration = 0;
    }
    dd = 0;
    FUNC13(duration, &hh, &mm, &ss);
    if (hh >= 24)
    {
        dd = hh / 24;
        hh = hh - dd * 24;
    }
    switch (dd)
    {
        case 0:
            str = FUNC7("%02d:%02d:%02d", hh, mm, ss);
            break;
        case 1:
            str = FUNC7(FUNC4("%d Day %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
        default:
            str = FUNC7(FUNC4("%d Days %02d:%02d:%02d"), dd, hh, mm, ss);
            break;
    }
    label = FUNC1(FUNC0(ud->builder, "queue_stats_encode"));
    FUNC17(label, str);
    FUNC5(str);

    const char  * path;
    struct stat   stbuf;

    path = FUNC16(uiDict, "destination");
    if (FUNC6(path, &stbuf) == 0)
    {
        const char * units = FUNC4("B");
        double size = stbuf.st_size;
        if (size > 1024)
        {
            units = FUNC4("KB");
            size /= 1024.0;
        }
        if (size > 1024)
        {
            units = FUNC4("MB");
            size /= 1024.0;
        }
        if (size > 1024)
        {
            units = FUNC4("GB");
            size /= 1024.0;
        }
        str = FUNC7("%.2f %s", size, units);
        label = FUNC1(FUNC0(ud->builder, "queue_stats_file_size"));
        FUNC17(label, str);
        FUNC5(str);
    }
    else
    {
        label = FUNC1(FUNC0(ud->builder, "queue_stats_file_size"));
        FUNC17(label, FUNC4("Not Available"));
    }

    label = FUNC1(FUNC0(ud->builder, "queue_stats_result"));
    FUNC17(label, result);
}