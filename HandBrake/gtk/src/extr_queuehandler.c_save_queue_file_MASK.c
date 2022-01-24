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
struct TYPE_3__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  GHB_QUEUE_PENDING ; 
 int /*<<< orphan*/  GHB_STOCK_CANCEL ; 
 int /*<<< orphan*/  GHB_STOCK_SAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_FILE_CHOOSER_ACTION_SAVE ; 
 scalar_t__ GTK_RESPONSE_ACCEPT ; 
 int /*<<< orphan*/  GTK_RESPONSE_CANCEL ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(signal_user_data_t *ud)
{
    int ii, count;
    GhbValue *queue = FUNC9(ud->queue);

    count = FUNC6(queue);
    for (ii = 0; ii < count; ii++)
    {
        GhbValue *queueDict, *uiDict;

        queueDict = FUNC5(ud->queue, ii);
        uiDict = FUNC7(queueDict, "uiSettings");
        if (uiDict == NULL)
            continue;
        FUNC8(uiDict, "job_status", GHB_QUEUE_PENDING);
    }

    GtkWidget *dialog;
    GtkWindow *hb_window;

    hb_window = FUNC3(FUNC0(ud->builder, "hb_window"));
    dialog = FUNC13("Queue Destination",
                      hb_window,
                      GTK_FILE_CHOOSER_ACTION_SAVE,
                      GHB_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
                      GHB_STOCK_SAVE, GTK_RESPONSE_ACCEPT,
                      NULL);
    FUNC15(FUNC2(dialog), "queue.json");
    if (FUNC12(FUNC1 (dialog)) != GTK_RESPONSE_ACCEPT)
    {
        FUNC10(&queue);
        FUNC16(dialog);
        return;
    }

    char *filename = FUNC14(FUNC2 (dialog));
    FUNC16(dialog);

    FUNC11(filename, queue);
    FUNC4 (filename);
    FUNC10(&queue);
}