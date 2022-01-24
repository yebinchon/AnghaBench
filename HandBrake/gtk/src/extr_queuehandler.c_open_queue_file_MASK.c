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
struct TYPE_5__ {int /*<<< orphan*/ * queue; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkFileFilter ;
typedef  int /*<<< orphan*/  GtkFileChooser ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GHB_QUEUE_PENDING ; 
 int /*<<< orphan*/  GHB_STOCK_CANCEL ; 
 int /*<<< orphan*/  GHB_STOCK_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_FILE_CHOOSER_ACTION_OPEN ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ GTK_RESPONSE_ACCEPT ; 
 int /*<<< orphan*/  GTK_RESPONSE_CANCEL ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC27(signal_user_data_t *ud)
{
    GtkWidget *dialog;
    GtkWindow *hb_window;

    hb_window = FUNC5(FUNC1(ud->builder, "hb_window"));
    dialog = FUNC22("Queue Destination",
                      hb_window,
                      GTK_FILE_CHOOSER_ACTION_OPEN,
                      GHB_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
                      GHB_STOCK_OPEN, GTK_RESPONSE_ACCEPT,
                      NULL);

    // Add filters
    GtkFileFilter *filter;
    GtkFileChooser *chooser = FUNC3(dialog);
    filter = FUNC4(FUNC0(ud->builder, "QueueFilterAll"));
    FUNC25(filter, FUNC6("All"));
    FUNC24(filter, "*");
    FUNC21(chooser, filter);
    filter = FUNC4(FUNC0(ud->builder, "QueueFilterJSON"));
    FUNC25(filter, "JSON");
    FUNC24(filter, "*.JSON");
    FUNC24(filter, "*.json");
    FUNC21(chooser, filter);

    if (FUNC20(FUNC2 (dialog)) != GTK_RESPONSE_ACCEPT)
    {
        FUNC26(dialog);
        return;
    }

    GhbValue *queue;
    char *filename = FUNC23(FUNC3(dialog));
    FUNC26(dialog);

    queue = FUNC16(filename);
    if (queue != NULL)
    {
        int ii, count;
        count = FUNC11(queue);
        for (ii = 0; ii < count; ii++)
        {
            GhbValue *queueDict, *uiDict;

            queueDict = FUNC10(queue, ii);
            uiDict = FUNC13(queueDict, "uiSettings");
            FUNC19(queueDict);
            FUNC14(uiDict, "job_status", GHB_QUEUE_PENDING);
            FUNC14(uiDict, "job_unique_id", 0);

            if (ud->queue == NULL)
                ud->queue = FUNC12();
            FUNC9(ud->queue, queueDict);
            FUNC7(ud, queueDict);
        }
        FUNC15(ud);
        FUNC17(ud->queue);
        FUNC18(&queue);
    }
    FUNC8 (filename);
}