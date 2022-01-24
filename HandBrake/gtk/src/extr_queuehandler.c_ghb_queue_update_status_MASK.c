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
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int GHB_QUEUE_PENDING ; 
 scalar_t__ GHB_QUEUE_RUNNING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

void
FUNC7(signal_user_data_t *ud, int index, int status)
{
    int count = FUNC1(ud->queue);
    if (index < 0 || index >= count)
    {
        // invalid index
        return;
    }

    GhbValue * queueDict, * uiDict;
    queueDict = FUNC0(ud->queue, index);
    if (queueDict == NULL) // should never happen
    {
        return;
    }
    uiDict    = FUNC2(queueDict, "uiSettings");
    if (uiDict == NULL) // should never happen
    {
        return;
    }

    if (FUNC3(uiDict, "job_status") == GHB_QUEUE_RUNNING)
    {
        return; // Never change the status of currently running jobs
    }

    if (status == GHB_QUEUE_PENDING)
    {
        FUNC5(ud, index, FALSE);
    }
    FUNC4(uiDict, "job_status", status);
    FUNC6(ud, index);
}