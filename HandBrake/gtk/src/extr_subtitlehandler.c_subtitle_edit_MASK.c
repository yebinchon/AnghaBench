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
struct TYPE_7__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  scalar_t__ GtkResponseType ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ GTK_RESPONSE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(GtkTreeView *tv, GtkTreePath *tp, signal_user_data_t *ud)
{
    GtkTreeModel *tm;
    GtkTreeSelection *ts;
    GtkTreeIter ti;

    ts = FUNC13(tv);
    tm = FUNC12(tv);
    if (FUNC10(tp) > 1) return;
    if (FUNC9(tm, &ti, tp))
    {
        GhbValue *subsettings, *backup;

        FUNC11(ts, &ti);

        // Back up settings in case we need to revert.
        backup = FUNC6(FUNC4(ud->settings));

        // Pop up the edit dialog
        GtkResponseType response;
        GtkWidget *dialog = FUNC0(ud->builder, "subtitle_dialog");
        response = FUNC8(FUNC1(dialog));
        FUNC14(dialog);
        if (response != GTK_RESPONSE_OK)
        {
            FUNC2(FUNC3(ud->settings),
                         "Subtitle", backup);
            subsettings = FUNC15(ud, NULL);
            if (subsettings != NULL)
            {
                FUNC17(ud, subsettings);
            }
            FUNC16(ud);
        }
        else
        {
            FUNC7(&backup);
        }
        FUNC5(ud);
    }
}