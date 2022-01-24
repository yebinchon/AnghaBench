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
struct TYPE_4__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeStore ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  G_TYPE_FLOAT ; 
 int /*<<< orphan*/  G_TYPE_STRING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subtitle_edit_clicked_cb ; 
 int /*<<< orphan*/  subtitle_list_selection_changed_cb ; 
 int /*<<< orphan*/  subtitle_remove_clicked_cb ; 

__attribute__((used)) static void
FUNC21(signal_user_data_t *ud)
{
    GtkCellRenderer *source_cell;
    GtkCellRenderer *arrow_cell;
    GtkCellRenderer *output_cell;
    GtkCellRenderer *edit_cell;
    GtkCellRenderer *delete_cell;
    GtkTreeViewColumn *column;
    GtkTreeStore *treestore;
    GtkTreeView  *treeview;
    GtkTreeSelection *selection;

    FUNC6("bind_subtitle_tree_model()\n");
    treeview = FUNC2(FUNC0(ud->builder, "subtitle_list_view"));
    selection = FUNC19(treeview);
    treestore = FUNC9(6, G_TYPE_STRING, G_TYPE_STRING,
                                      G_TYPE_STRING, G_TYPE_STRING,
                                      G_TYPE_STRING, G_TYPE_FLOAT);
    FUNC20(treeview, FUNC1(treestore));

    source_cell = FUNC8();
    arrow_cell = FUNC8();
    output_cell = FUNC8();
    edit_cell = FUNC5();
    delete_cell = FUNC5();

    column = FUNC12();
    FUNC17(column, 12);
    FUNC18(column, FUNC4("Track Information"));
    FUNC14(column, source_cell, FALSE);
    FUNC11(column, source_cell, "markup", 0);
    FUNC11(column, source_cell, "yalign", 5);
    FUNC14(column, arrow_cell, FALSE);
    FUNC11(column, arrow_cell, "text", 1);
    FUNC14(column, output_cell, TRUE);
    FUNC11(column, output_cell, "markup", 2);
    FUNC11(column, output_cell, "yalign", 5);
    FUNC10(treeview, FUNC3(column));
    FUNC15(column, TRUE);
    FUNC16(column, 400);

    column = FUNC13(
                                    FUNC4(""), edit_cell, "icon-name", 3, NULL);
    FUNC10(treeview, FUNC3(column));

    column = FUNC13(
                                    FUNC4(""), delete_cell, "icon-name", 4, NULL);
    FUNC10(treeview, FUNC3(column));

    FUNC7(selection, "changed", subtitle_list_selection_changed_cb, ud);
    FUNC7(edit_cell, "clicked", subtitle_edit_clicked_cb, ud);
    FUNC7(delete_cell, "clicked", subtitle_remove_clicked_cb, ud);
}