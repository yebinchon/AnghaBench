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
struct TYPE_7__ {int /*<<< orphan*/ * queue; int /*<<< orphan*/ * prefs; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GHB_QUEUE_PENDING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC15(signal_user_data_t *ud, GhbValue *settings, gint batch)
{
    // Add settings to the queue
    if (!FUNC14(ud, settings, batch))
    {
        return FALSE;
    }

    if (ud->queue == NULL)
        ud->queue = FUNC2();

    FUNC7(settings);

    GhbValue *titleDict  = FUNC9(settings);
    GhbValue *jobDict    = FUNC8(settings);
    GhbValue *uiDict     = FUNC13(settings);

    FUNC4(uiDict, "Job");
    FUNC4(uiDict, "Title");

    GhbValue *queueDict  = FUNC3();
    FUNC5(queueDict, "uiSettings", uiDict);
    FUNC5(queueDict, "Job", FUNC13(jobDict));
    FUNC5(queueDict, "Title", FUNC13(titleDict));

    // Copy current prefs into settings
    // The job should run with the preferences that existed
    // when the job was added to the queue.
    FUNC5(uiDict, "Preferences", FUNC13(ud->prefs));

    // Make a copy of current settings to be used for the new job
    FUNC6(uiDict, "job_status", GHB_QUEUE_PENDING);
    FUNC6(uiDict, "job_unique_id", 0);

    FUNC1(ud->queue, queueDict);
    FUNC0(ud, queueDict);
    FUNC11(ud->queue);
    FUNC12(ud);
    FUNC10(ud);

    return TRUE;
}