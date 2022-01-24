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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_4__ {scalar_t__ job_activity_log; int /*<<< orphan*/  prefs; int /*<<< orphan*/  queue_activity_buffer; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC4 (scalar_t__ const*) ; 
 scalar_t__* FUNC5 (scalar_t__ const*) ; 
 scalar_t__* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__* FUNC7 (scalar_t__*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 scalar_t__* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct tm* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(signal_user_data_t *ud, GhbValue *uiDict)
{
    time_t  _now;
    struct tm *now;
    gchar *log_path, *pos, *basename, *dest_dir;
    const gchar *destname;

    // queue_activity_buffer is about to be reused, make sure
    // queue is showing the correct buffer
    FUNC12(ud);
    // Erase current contents of queue activity
    FUNC13(ud->queue_activity_buffer, "", 0);

    _now = FUNC17(NULL);
    now = FUNC16(&_now);
    destname = FUNC9(uiDict, "destination");
    basename = FUNC4(destname);
    if (FUNC8(ud->prefs, "EncodeLogLocation"))
    {
        dest_dir = FUNC5 (destname);
    }
    else
    {
        dest_dir = FUNC11("EncodeLogs");
    }
    pos = FUNC7( basename, "." );
    if (pos != NULL)
    {
        *pos = 0;
    }
    log_path = FUNC6("%s/%s %d-%02d-%02d %02d-%02d-%02d.log",
        dest_dir,
        basename,
        now->tm_year + 1900, now->tm_mon + 1, now->tm_mday,
        now->tm_hour, now->tm_min, now->tm_sec);
    FUNC0(basename);
    FUNC0(dest_dir);
    if (ud->job_activity_log)
        FUNC2(ud->job_activity_log);
    ud->job_activity_log = FUNC1 (log_path, "w", NULL);
    if (ud->job_activity_log)
    {
        gchar *ver_str;

        ver_str = FUNC6("Handbrake Version: %s (%d)\n",
                                    FUNC15(NULL), FUNC14(NULL));
        FUNC3 (ud->job_activity_log, ver_str,
                                    -1, NULL, NULL);
        FUNC0(ver_str);
        FUNC10(uiDict, "ActivityFilename", log_path);
    }
    FUNC0(log_path);
}