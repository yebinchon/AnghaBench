#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  PC; } ;
typedef  TYPE_1__ sh2regs_struct ;
typedef  TYPE_2__* gpointer ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_9__ {int /*<<< orphan*/  debugsh; int /*<<< orphan*/  view; } ;
typedef  TYPE_2__ YuiSh ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkMenuItem ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,unsigned int*) ; 

void FUNC10(GtkMenuItem * menuitem, gpointer user_data) {
	YuiSh * sh2 = user_data;
	GtkTreeView * view = FUNC0(sh2->view);
	GtkTreeSelection * selection;
	GtkTreeModel * model;
	GtkTreeIter iter;
	gchar * address_s;
	unsigned int address;

	selection = FUNC8(view);

	FUNC7(selection, &model, &iter);

	FUNC6(model, &iter, 1, &address_s, -1);

	FUNC9(address_s, "0x%08X", &address);

	FUNC1(sh2->debugsh, address);

	FUNC5(address_s);

	{
		sh2regs_struct sh2regs;
		FUNC2(sh2->debugsh, &sh2regs);
		FUNC4(sh2,sh2regs.PC);
		FUNC3(sh2);
	}
}