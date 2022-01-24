#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  globals; int /*<<< orphan*/  queue; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GHB_QUEUE_PENDING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC14(signal_user_data_t *ud)
{
    gint count, ii;
    GhbValue *queueDict, *uiDict;
    gint status;
    GtkWidget *progress;

    FUNC1("start_next_job");
    progress = FUNC0(ud->builder, "progressbar");
    FUNC12(progress);

    count = FUNC3(ud->queue);
    for (ii = 0; ii < count; ii++)
    {

        queueDict = FUNC2(ud->queue, ii);
        uiDict = FUNC4(queueDict, "uiSettings");
        status = FUNC5(uiDict, "job_status");
        if (status == GHB_QUEUE_PENDING)
        {
            FUNC7(ud);
            FUNC13(ud, queueDict);
            FUNC10(ud);
            return;
        }
    }
    // Nothing pending
    FUNC9(ud);
    FUNC8(ud);
    FUNC10(ud);
    FUNC11(progress);
    FUNC6(ud->globals, "SkipDiskFreeCheck", FALSE);
}