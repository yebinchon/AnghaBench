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
struct TYPE_3__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  app; int /*<<< orphan*/ * settings; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
typedef  scalar_t__ gint ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkListBoxRow ;
typedef  int /*<<< orphan*/  GtkListBox ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GSimpleAction ;

/* Variables and functions */
 scalar_t__ GHB_QUEUE_PENDING ; 
 scalar_t__ GHB_STATE_MUXING ; 
 scalar_t__ GHB_STATE_PAUSED ; 
 scalar_t__ GHB_STATE_SCANNING ; 
 scalar_t__ GHB_STATE_SEARCHING ; 
 scalar_t__ GHB_STATE_WORKING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/ * FUNC16 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC24(signal_user_data_t *ud)
{
    GtkWidget        * widget;
    GSimpleAction    * action;
    gint               queue_count;
    gint               title_id, titleindex;
    const hb_title_t * title;
    gint               queue_state, scan_state;
    gboolean           allow_start, show_stop, allow_add, paused;
    GtkListBox       * lb;
    GtkListBoxRow    * row;
    gint               index, status = GHB_QUEUE_PENDING;

    lb = FUNC1(FUNC0(ud->builder, "queue_list"));
    row = FUNC17(lb);

    if (row != NULL)
    {
        index = FUNC18(row);
        if (index >= 0 && index < FUNC11(ud->queue))
        {
            GhbValue * queueDict, *uiDict;

            queueDict = FUNC10(ud->queue, index);
            uiDict    = FUNC12(queueDict, "uiSettings");
            status    = FUNC13(uiDict, "job_status");
        }
    }

    queue_count = FUNC11(ud->queue);
    title_id = FUNC13(ud->settings, "title");
    title = FUNC16(title_id, &titleindex);

    queue_state = FUNC14();
    scan_state = FUNC15();

    show_stop   = queue_state &
                  (GHB_STATE_WORKING | GHB_STATE_SEARCHING |
                   GHB_STATE_SCANNING | GHB_STATE_MUXING | GHB_STATE_PAUSED);
    allow_start = !(scan_state & GHB_STATE_SCANNING) &&
                    (title != NULL || queue_count > 0);
    allow_add   = !(scan_state & GHB_STATE_SCANNING) && title != NULL;


    paused = queue_state & GHB_STATE_PAUSED;

    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-export"));
    FUNC9(action, !!queue_count);
    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-add"));
    FUNC9(action, allow_add);
    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-add-all"));
    FUNC9(action, allow_add);
    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-start"));
    FUNC9(action, allow_start || show_stop);
    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-pause"));
    FUNC9(action, show_stop);

    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-reset"));
    FUNC9(action, row != NULL);

    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-edit"));
    FUNC9(action, row != NULL);

    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-open-source"));
    FUNC9(action, row != NULL);

    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-open-dest"));
    FUNC9(action, row != NULL);

    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-open-log-dir"));
    FUNC9(action, status != GHB_QUEUE_PENDING);

    action = FUNC6(FUNC8(FUNC5(ud->app),
                                                        "queue-open-log"));
    FUNC9(action, status != GHB_QUEUE_PENDING);

    widget = FUNC0 (ud->builder, "queue_start");
    if (show_stop)
    {
        FUNC20(FUNC3(widget), "hb-stop");
        FUNC21(FUNC3(widget), FUNC7("Stop"));
        FUNC22(FUNC4(widget), FUNC7("Stop Encoding"));
    }
    else
    {
        FUNC20(FUNC3(widget), "hb-start");
        FUNC21(FUNC3(widget), FUNC7("Start"));
        FUNC22(FUNC4(widget), FUNC7("Start Encoding"));
    }
    widget = FUNC0 (ud->builder, "queue_list_start");
    if (show_stop)
    {
        FUNC20(FUNC3(widget), "hb-stop");
        FUNC21(FUNC3(widget), FUNC7("Stop"));
        FUNC22(FUNC4(widget), FUNC7("Stop Encoding"));
    }
    else
    {
        FUNC20(FUNC3(widget), "hb-start");
        FUNC21(FUNC3(widget), FUNC7("Start"));
        FUNC22(FUNC4(widget), FUNC7("Start Encoding"));
    }
    widget = FUNC0 (ud->builder, "queue_start_menu");
    if (show_stop)
    {
        FUNC19(FUNC2(widget), FUNC7("S_top Encoding"));
        FUNC23(widget, FUNC7("Stop Encoding"));
    }
    else
    {
        FUNC19(FUNC2(widget), FUNC7("_Start Encoding"));
        FUNC23(widget, FUNC7("Start Encoding"));
    }

    widget = FUNC0 (ud->builder, "queue_pause");
    if (paused)
    {
        FUNC20(FUNC3(widget), "hb-start");
        FUNC21(FUNC3(widget), FUNC7("Resume"));
        FUNC22(FUNC4(widget), FUNC7("Resume Encoding"));
    }
    else
    {
        FUNC20(FUNC3(widget), "hb-pause");
        FUNC21(FUNC3(widget), FUNC7("Pause"));
        FUNC22(FUNC4(widget), FUNC7("Pause Encoding"));
    }
    widget = FUNC0 (ud->builder, "queue_list_pause");
    if (paused)
    {
        FUNC20(FUNC3(widget), "hb-start");
        FUNC21(FUNC3(widget), FUNC7("Resume"));
        FUNC22(FUNC4(widget), FUNC7("Resume Encoding"));
    }
    else
    {
        FUNC20(FUNC3(widget), "hb-pause");
        FUNC21(FUNC3(widget), FUNC7("Pause"));
        FUNC22(FUNC4(widget), FUNC7("Pause Encoding"));
    }
    widget = FUNC0 (ud->builder, "queue_pause_menu");
    if (paused)
    {
        FUNC19(FUNC2(widget), FUNC7("_Resume Encoding"));
        FUNC23(widget, FUNC7("Resume Encoding"));
    }
    else
    {
        FUNC19(FUNC2(widget), FUNC7("_Pause Encoding"));
        FUNC23(widget, FUNC7("Pause Encoding"));
    }
}