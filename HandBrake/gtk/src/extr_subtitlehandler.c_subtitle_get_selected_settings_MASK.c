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
struct TYPE_3__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int gint ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GhbValue*
FUNC12(signal_user_data_t *ud, int *index)
{
    GtkTreeView *tv;
    GtkTreeSelection *ts;
    GtkTreeModel *tm;
    GtkTreeIter iter;
    GhbValue *subsettings = NULL;

    tv = FUNC1(FUNC0(ud->builder, "subtitle_list_view"));
    ts = FUNC11(tv);
    if (FUNC10(ts, &tm, &iter))
    {
        GhbValue *subtitle_list, *subtitle_search;
        gboolean search;
        gint row, *indices;
        GtkTreePath *tp;

        // Get the row number
        tp = FUNC7(tm, &iter);
        indices = FUNC9(tp);
        row = indices[0];
        FUNC8(tp);

        subtitle_search = FUNC6(ud->settings);
        search = FUNC4(subtitle_search, "Enable");
        if (search)
        {
            if (row == 0)
            {
                if (index != NULL)
                    *index = -1;
                return subtitle_search;
            }
            row--;
        }

        subtitle_list = FUNC5(ud->settings);
        if (row < 0 || row >= FUNC3(subtitle_list))
            return NULL;

        subsettings = FUNC2(subtitle_list, row);
        if (index != NULL)
            *index = row;
    }
    return subsettings;
}