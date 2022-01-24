#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * queue; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GHB_QUEUE_CANCELED ; 
 scalar_t__ GHB_QUEUE_DONE ; 
 int /*<<< orphan*/  GHB_QUEUE_PENDING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

gboolean
FUNC21(signal_user_data_t *ud)
{
    GhbValue *queue;
    gint count, ii;
    gint pid;
    gint status;
    GhbValue *queueDict, *uiDict;

    FUNC3("ghb_reload_queue");

find_pid:
    pid = FUNC11();
    if (pid < 0)
        goto done;

    queue = FUNC12(pid);
    FUNC15(pid);

    // Look for unfinished entries
    count = FUNC5(queue);
    for (ii = count-1; ii >= 0; ii--)
    {
        queueDict = FUNC4(queue, ii);
        uiDict = FUNC7(queueDict, "uiSettings");
        if (uiDict == NULL ||
            FUNC9(uiDict, "job_status") == NULL)
        {
            FUNC6(queue, ii);
            continue;
        }
        status = FUNC8(uiDict, "job_status");
        if (status == GHB_QUEUE_DONE || status == GHB_QUEUE_CANCELED)
        {
            FUNC6(queue, ii);
            continue;
        }
    }
    count = FUNC5(queue);
    if (count == 0)
    {
        FUNC18(&queue);
        goto find_pid;
    }
    else
    {
        GtkWidget *widget = FUNC0(ud->builder, "show_queue");
        FUNC20(FUNC1(widget), TRUE);
        ud->queue = queue;
        for (ii = 0; ii < count; ii++)
        {
            queueDict = FUNC4(queue, ii);
            uiDict = FUNC7(queueDict, "uiSettings");
            FUNC10(uiDict, "job_unique_id", 0);
            FUNC10(uiDict, "job_status", GHB_QUEUE_PENDING);
            FUNC2(ud, queueDict);
        }
        FUNC13(ud);
        FUNC16(ud->queue);
        FUNC17(ud);
        FUNC14(ud);
    }

done:
    FUNC19();

    return FALSE;
}