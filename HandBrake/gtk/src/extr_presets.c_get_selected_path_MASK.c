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
struct TYPE_3__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  hb_preset_index_t ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

hb_preset_index_t *
FUNC5(signal_user_data_t *ud)
{
    GtkTreeView      *treeview;
    GtkTreeSelection *selection;
    GtkTreeModel     *store;
    GtkTreeIter       iter;

    treeview  = FUNC1(FUNC0(ud->builder, "presets_list"));
    selection = FUNC4(treeview);
    if (FUNC3(selection, &store, &iter))
    {
        return FUNC2(store, &iter);
    }
    return NULL;
}