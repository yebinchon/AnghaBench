#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  app; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_10__ {scalar_t__ depth; } ;
typedef  TYPE_2__ hb_preset_index_t ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GSimpleAction ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int HB_PRESET_TYPE_CUSTOM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC17(signal_user_data_t *ud, hb_preset_index_t *path)
{
    GtkTreeView      *treeview;
    GtkTreeSelection *selection;
    GtkTreeModel     *store;
    GtkTreeIter       iter;
    GtkTreePath      *treepath;

    if (path == NULL || path->depth == 0)
        return;

    treeview  = FUNC1(FUNC0(ud->builder, "presets_list"));
    selection = FUNC13 (treeview);
    store     = FUNC12 (treeview);
    treepath  = FUNC6(path);
    if (treepath != NULL)
    {
        FUNC11(treeview, treepath);
        if (FUNC7(store, &iter, treepath))
        {
            FUNC10(selection, &iter);
        }
        else
        {
            if (FUNC8(store, &iter))
                FUNC10(selection, &iter);
        }
        // Make the selection visible in scroll window if it is not.
        FUNC14(treeview, treepath, NULL, FALSE, 0, 0);
        FUNC9(treepath);
    }
    FUNC16(ud, path);

    int type = FUNC15(path);
    GSimpleAction * action;

    action = FUNC3(FUNC4(
                             FUNC2(ud->app), "preset-rename"));
    FUNC5(action, type == HB_PRESET_TYPE_CUSTOM);
    action = FUNC3(FUNC4(
                             FUNC2(ud->app), "preset-save"));
    FUNC5(action, type == HB_PRESET_TYPE_CUSTOM);
}