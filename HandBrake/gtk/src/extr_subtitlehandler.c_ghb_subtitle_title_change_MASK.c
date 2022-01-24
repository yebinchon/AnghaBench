#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_6__ {int /*<<< orphan*/  list_subtitle; } ;
typedef  TYPE_2__ hb_title_t ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(signal_user_data_t *ud, gboolean show)
{
    GtkWidget *w = FUNC0(ud->builder, "subtitle_add");
    FUNC3(w, show);
    w = FUNC0(ud->builder, "subtitle_add_all");
    FUNC3(w, show);
    w = FUNC0(ud->builder, "subtitle_reset");
    FUNC3(w, show);

    int title_id;
    title_id = FUNC1(ud->settings, "title");
    const hb_title_t *title = FUNC2(title_id, NULL);
    if (title != NULL)
    {
        w = FUNC0(ud->builder, "SubtitleImportDisable");
        FUNC3(w, !!FUNC4(title->list_subtitle));
    }
}