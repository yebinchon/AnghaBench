#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeStore ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  G_TYPE_INT ; 
 int /*<<< orphan*/  G_TYPE_STRING ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(GtkTreeView *tv)
{
    GtkTreeViewColumn * column;
    GtkTreeStore      * ts;
    GtkCellRenderer   * lang_cell;

    // Store contains:
    // 0 - Language string to display
    // 1 - Index of language in the libhb language list
    ts = FUNC3(2, G_TYPE_STRING, G_TYPE_INT);
    FUNC8(tv, FUNC0(ts));

    lang_cell = FUNC2();
    column = FUNC6();
    FUNC7(column, lang_cell, FALSE);
    FUNC5(column, lang_cell, "markup", 0);
    FUNC4(tv, FUNC1(column));
}