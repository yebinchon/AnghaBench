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
typedef  int /*<<< orphan*/  tristate ;
struct symbol {int dummy; } ;
struct menu {struct symbol* sym; } ;
typedef  scalar_t__ gint ;

/* Variables and functions */
 scalar_t__ COL_MOD ; 
 scalar_t__ COL_NO ; 
 scalar_t__ COL_YES ; 
 int /*<<< orphan*/  FULL_VIEW ; 
 int /*<<< orphan*/  SINGLE_VIEW ; 
 int /*<<< orphan*/  SPLIT_VIEW ; 
#define  S_BOOLEAN 132 
#define  S_HEX 131 
#define  S_INT 130 
#define  S_STRING 129 
#define  S_TRISTATE 128 
 int /*<<< orphan*/ * browsed ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  mod ; 
 int /*<<< orphan*/  no ; 
 int /*<<< orphan*/  rootmenu ; 
 int FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  view_mode ; 
 int /*<<< orphan*/  yes ; 

__attribute__((used)) static void FUNC6(struct menu *menu, gint col)
{
	struct symbol *sym = menu->sym;
	tristate newval;

	if (!sym)
		return;

	if (col == COL_NO)
		newval = no;
	else if (col == COL_MOD)
		newval = mod;
	else if (col == COL_YES)
		newval = yes;
	else
		return;

	switch (FUNC2(sym)) {
	case S_BOOLEAN:
	case S_TRISTATE:
		if (!FUNC4(sym, newval))
			newval = yes;
		FUNC3(sym, newval);
		if (view_mode == FULL_VIEW)
			FUNC5(&rootmenu, NULL);
		else if (view_mode == SPLIT_VIEW) {
			FUNC5(browsed, NULL);
			FUNC0();
		}
		else if (view_mode == SINGLE_VIEW)
			FUNC1();	//fixme: keep exp/coll
		break;
	case S_INT:
	case S_HEX:
	case S_STRING:
	default:
		break;
	}
}