#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gpointer ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_5__ {int /*<<< orphan*/  debugsh; int /*<<< orphan*/  mbpList; } ;
typedef  TYPE_1__ YuiSh ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,unsigned int*) ; 

void FUNC7(GtkWidget * menuitem, gpointer user_data) {
	GtkTreeSelection * selection;
	YuiSh * sh2 = user_data;
	GtkTreeIter iter;
	GtkTreeModel * model;
	gchar * address_s;
	unsigned int address;
	GtkTreeView * view;

	view  = FUNC0(sh2->mbpList);

	  selection = FUNC5(view);

	  FUNC4(selection, &model, &iter);

	  FUNC3(model, &iter, 0, &address_s, -1);
          FUNC6(address_s, "%8X", &address);

          FUNC1(sh2->debugsh, address);

	FUNC2(sh2);
}