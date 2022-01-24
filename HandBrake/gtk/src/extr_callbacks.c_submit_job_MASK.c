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
typedef  int time_t ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  char gchar ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int GHB_QUEUE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(signal_user_data_t *ud, GhbValue *queueDict)
{
    gchar *type, *modified;
    const char *name;
    GhbValue *uiDict;
    gboolean preset_modified;

    FUNC0("submit_job");
    if (queueDict == NULL) return;
    uiDict = FUNC2(queueDict, "uiSettings");
    preset_modified = FUNC3(uiDict, "preset_modified");
    name = FUNC5(uiDict, "PresetFullName");
    type = FUNC4(uiDict, "Type") == 1 ? "Custom " : "";
    modified = preset_modified ? "Modified " : "";
    FUNC8("%s%sPreset: %s", modified, type, name);

    FUNC6(uiDict, "job_status", GHB_QUEUE_RUNNING);
    FUNC12(ud, uiDict);
    GhbValue *job_dict = FUNC2(queueDict, "Job");
    int unique_id = FUNC1(FUNC9(), job_dict);
    FUNC6(uiDict, "job_unique_id", unique_id);
    time_t now = FUNC13(NULL);
    FUNC6(uiDict, "job_start_time", now);
    FUNC11();

    // Show queue progress bar
    int index = FUNC7(ud->queue, unique_id, NULL);
    FUNC10(ud, index, 1);
}