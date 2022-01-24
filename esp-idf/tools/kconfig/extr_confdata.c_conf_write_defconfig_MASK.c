#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symbol {int flags; scalar_t__ type; } ;
struct menu {struct menu* next; struct menu* parent; struct menu* list; struct symbol* sym; } ;
struct TYPE_2__ {struct menu* list; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SYMBOL_WRITE ; 
 scalar_t__ S_BOOLEAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct symbol*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  kconfig_printer_cb ; 
 int /*<<< orphan*/  FUNC3 (struct menu*) ; 
 struct symbol* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ rootmenu ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*) ; 
 struct symbol* FUNC7 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC10 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC11 (struct symbol*) ; 
 scalar_t__ FUNC12 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC13 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC14 (struct symbol*) ; 
 scalar_t__ FUNC15 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC16 (struct symbol*) ; 
 scalar_t__ yes ; 

int FUNC17(const char *filename)
{
	struct symbol *sym;
	struct menu *menu;
	FILE *out;

	out = FUNC2(filename, "w");
	if (!out)
		return 1;

	FUNC8();

	/* Traverse all menus to find all relevant symbols */
	menu = rootmenu.list;

	while (menu != NULL)
	{
		sym = menu->sym;
		if (sym == NULL) {
			if (!FUNC3(menu))
				goto next_menu;
		} else if (!FUNC14(sym)) {
			FUNC6(sym);
			if (!(sym->flags & SYMBOL_WRITE))
				goto next_menu;
			sym->flags &= ~SYMBOL_WRITE;
			/* If we cannot change the symbol - skip */
			if (!FUNC13(sym))
				goto next_menu;
			/* If symbol equals to default value - skip */
			if (FUNC5(FUNC11(sym), FUNC10(sym)) == 0)
				goto next_menu;

			/*
			 * If symbol is a choice value and equals to the
			 * default for a choice - skip.
			 * But only if value is bool and equal to "y" and
			 * choice is not "optional".
			 * (If choice is "optional" then all values can be "n")
			 */
			if (FUNC15(sym)) {
				struct symbol *cs;
				struct symbol *ds;

				cs = FUNC4(FUNC9(sym));
				ds = FUNC7(cs);
				if (!FUNC16(cs) && sym == ds) {
					if ((sym->type == S_BOOLEAN) &&
					    FUNC12(sym) == yes)
						goto next_menu;
				}
			}
			FUNC0(out, sym, &kconfig_printer_cb, NULL);
		}
next_menu:
		if (menu->list != NULL) {
			menu = menu->list;
		}
		else if (menu->next != NULL) {
			menu = menu->next;
		} else {
			while ((menu = menu->parent)) {
				if (menu->next != NULL) {
					menu = menu->next;
					break;
				}
			}
		}
	}
	FUNC1(out);
	return 0;
}