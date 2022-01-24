#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  list_subtitle; } ;
typedef  TYPE_2__ hb_title_t ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

void
FUNC12(signal_user_data_t *ud)
{
    int               sub_count, title_id;
    GtkWidget        *widget;
    const hb_title_t *title;

    title_id = FUNC3(ud->settings, "title");
    title    = FUNC6(title_id, NULL);

    FUNC2(ud->builder);
    if (title == NULL)
    {
        // Clear the subtitle list
        FUNC1(ud->settings);
        return;
    }
    sub_count = FUNC9(title->list_subtitle);
    if (sub_count == 0)
    {
        // No source subtitles
        widget = FUNC0(ud->builder, "SubtitleSrtEnable");
        FUNC8(widget, TRUE);
    }
    else
    {
        widget = FUNC0(ud->builder, "SubtitleImportDisable");
        FUNC8(widget, TRUE);
    }
    GhbValue *job = FUNC5(ud->settings);
    FUNC4(job, "Subtitle");
    FUNC10(FUNC7(), title_id, ud->settings, job);
    FUNC11(ud);
}