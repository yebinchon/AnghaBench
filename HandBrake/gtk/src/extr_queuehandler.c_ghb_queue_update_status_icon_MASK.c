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
typedef  int /*<<< orphan*/  GtkListBoxRow ;
typedef  int /*<<< orphan*/  GtkListBox ;
typedef  int /*<<< orphan*/  GtkImage ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  GHB_ICON_SIZE_BUTTON ; 
#define  GHB_QUEUE_CANCELED 132 
#define  GHB_QUEUE_DONE 131 
#define  GHB_QUEUE_FAIL 130 
#define  GHB_QUEUE_PENDING 129 
#define  GHB_QUEUE_RUNNING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 

void
FUNC11(signal_user_data_t *ud, int index)
{
    int count = FUNC6(ud->queue);
    if (index < 0 || index >= count)
    {
        // invalid index
        return;
    }

    GhbValue * queueDict, * uiDict;
    queueDict = FUNC5(ud->queue, index);
    if (queueDict == NULL) // should never happen
    {
        return;
    }
    uiDict    = FUNC7(queueDict, "uiSettings");
    if (uiDict == NULL) // should never happen
    {
        return;
    }

    int status = FUNC8(uiDict, "job_status");

    // Now update the UI
    const char * icon_name;
    switch (status)
    {
        case GHB_QUEUE_RUNNING:
             icon_name = "hb-start";
            break;
        case GHB_QUEUE_PENDING:
             icon_name = "hb-source";
            break;
        case GHB_QUEUE_FAIL:
        case GHB_QUEUE_CANCELED:
             icon_name = "hb-stop";
            break;
        case GHB_QUEUE_DONE:
             icon_name = "hb-complete";
            break;
        default:
             icon_name = "hb-source";
            break;
    }
    GtkListBox    * lb;
    GtkListBoxRow * row;
    GtkImage      * status_icon;

    lb = FUNC2(FUNC0(ud->builder, "queue_list"));
    row = FUNC10(lb, index);
    if (row == NULL) // should never happen
    {
        return;
    }
    status_icon = FUNC1(FUNC4(FUNC3(row), "queue_item_status"));
    if (status_icon == NULL) // should never happen
    {
        return;
    }
    FUNC9(status_icon, icon_name,
                                 GHB_ICON_SIZE_BUTTON);
}