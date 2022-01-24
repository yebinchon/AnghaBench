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
struct TYPE_4__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkListBoxRow ;
typedef  int /*<<< orphan*/  GtkListBox ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int GHB_QUEUE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC13(signal_user_data_t *ud, int index)
{
    GtkListBox    * lb;
    GtkListBoxRow * row;
    GhbValue      * queueDict, * uiDict;

    if (index < 0 || index >= FUNC5(ud->queue))
    {
        return;
    }

    queueDict  = FUNC4(ud->queue, index);
    uiDict     = FUNC8(queueDict, "uiSettings");
    int status = FUNC9(uiDict, "job_status");
    if (status == GHB_QUEUE_RUNNING)
    {
        // Ask if wants to stop encode.
        if (!FUNC7(ud, NULL))
        {
            return;
        }
        int unique_id = FUNC9(uiDict, "job_unique_id");
        FUNC10(unique_id);
    }
    FUNC6(ud->queue, index);

    // Update UI
    lb  = FUNC2(FUNC0(ud->builder, "queue_list"));
    row = FUNC12(lb, index);
    FUNC11(FUNC1(lb), FUNC3(row));
}