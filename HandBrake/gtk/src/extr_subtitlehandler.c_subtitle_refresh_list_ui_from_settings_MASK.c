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
typedef  scalar_t__ gint ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(signal_user_data_t *ud, GhbValue *settings)
{
    GtkTreeView  *tv;
    GtkTreeModel *tm;
    GtkTreeIter   ti;
    GhbValue *subtitle_list, *subtitle_search;
    GhbValue *subsettings;
    gint ii, count, tm_count;
    gboolean search;

    tv = FUNC2(FUNC0(ud->builder, "subtitle_list_view"));
    tm = FUNC12(tv);

    tm_count = FUNC9(tm, NULL);

    subtitle_list = FUNC7(settings);
    subtitle_search = FUNC8(settings);
    search = FUNC6(subtitle_search, "Enable");
    count = FUNC5(subtitle_list);
    if (count + search != tm_count)
    {
        FUNC3(ud->builder);
        for (ii = 0; ii < count + search; ii++)
        {
            FUNC11(FUNC1(tm), &ti, NULL);
        }
    }
    // Enable or Disabel FAS button
    GtkWidget *w = FUNC0(ud->builder, "subtitle_add_fas");
    FUNC13(w, !search);
    if (search)
    {

        FUNC10(tm, &ti, NULL, 0);
        FUNC14(tm, &ti, ud->settings, subtitle_search);
    }
    for (ii = 0; ii < count; ii++)
    {
        FUNC10(tm, &ti, NULL, ii + search);
        subsettings = FUNC4(subtitle_list, ii);
        FUNC14(tm, &ti, ud->settings, subsettings);
    }
}