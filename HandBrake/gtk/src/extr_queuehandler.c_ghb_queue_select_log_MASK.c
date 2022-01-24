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
struct TYPE_5__ {int /*<<< orphan*/ * extra_activity_buffer; int /*<<< orphan*/ * extra_activity_path; int /*<<< orphan*/ * queue_activity_buffer; int /*<<< orphan*/  builder; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  GtkTextView ;
typedef  int /*<<< orphan*/  GtkTextBuffer ;
typedef  int /*<<< orphan*/  GtkListBoxRow ;
typedef  int /*<<< orphan*/  GtkListBox ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int GHB_QUEUE_PENDING ; 
 int GHB_QUEUE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char const*) ; 

void FUNC17(signal_user_data_t * ud)
{
    GtkListBox    * lb;
    GtkListBoxRow * row;
    GtkTextBuffer * current;
    gint            index;
    GhbValue      * queueDict, *uiDict;

    lb              = FUNC1(FUNC0(ud->builder, "queue_list"));
    row             = FUNC11(lb);
    if (row != NULL)
    {
        // There is a queue list row selected
        GtkTextView * tv;
        int           status;
        const char  * log_path;

        index = FUNC12(row);
        if (index < 0 || index >= FUNC5(ud->queue))
        { // Should never happen
            return;
        }
        queueDict = FUNC4(ud->queue, index);
        uiDict = FUNC6(queueDict, "uiSettings");
        // Get the current buffer that is displayed in the queue log
        tv = FUNC2(FUNC0(ud->builder, "queue_activity_view"));
        current = FUNC14(tv);

        status = FUNC7(uiDict, "job_status");
        log_path = FUNC8(uiDict, "ActivityFilename");
        if (status != GHB_QUEUE_PENDING && log_path != NULL)
        {
            FUNC10(ud, "queue_activity_location",
                          FUNC9(log_path));
        }
        else
        {
            FUNC10(ud, "queue_activity_location", FUNC9(""));
        }
        if (status == GHB_QUEUE_RUNNING)
        {
            // Selected encode is running, enable display of log and
            // show the live buffer
            if (ud->queue_activity_buffer != current)
            {
                FUNC15(tv, ud->queue_activity_buffer);
            }
        }
        else
        {
            // Selected encode is pending/finished/canceled/failed
            // use non-live buffer (aka extra) to display log
            if (ud->extra_activity_buffer != current)
            {
                FUNC15(tv, ud->extra_activity_buffer);
            }
            log_path = FUNC8(uiDict, "ActivityFilename");
            if (status != GHB_QUEUE_PENDING && log_path != NULL)
            {
                // enable display of log and read log into display buffer
                FUNC16(ud, log_path);
            }
            else
            {
                // No log file, encode is pending
                // disable display of log
                FUNC3(ud->extra_activity_path);
                ud->extra_activity_path = NULL;
                FUNC13(ud->extra_activity_buffer, "", 0);
            }
        }
    }
}