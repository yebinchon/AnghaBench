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
struct TYPE_4__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(signal_user_data_t *ud)
{
    GtkTreeView *tv;
    GtkTreePath *tp;
    GtkTreeSelection *ts;
    GtkTreeModel *tm;
    GtkTreeIter ti;
    gint *indices;
    gint row;
    GhbValue *asettings = NULL;
    const GhbValue *audio_list;

    FUNC3("ghb_audio_list_refresh_selected ()");
    tv = FUNC1(FUNC0(ud->builder, "audio_list_view"));
    ts = FUNC11 (tv);
    if (FUNC10(ts, &tm, &ti))
    {
        // Get the row number
        tp = FUNC7 (tm, &ti);
        indices = FUNC9 (tp);
        row = indices[0];
        FUNC8(tp);
        if (row < 0) return;

        audio_list = FUNC6(ud->settings);
        if (row >= FUNC5(audio_list))
            return;

        asettings = FUNC4(audio_list, row);
        FUNC2(tm, &ti, ud, asettings);
    }
}