#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_15__ {int /*<<< orphan*/  atr; } ;
struct TYPE_14__ {int /*<<< orphan*/  atr; } ;
struct TYPE_13__ {int /*<<< orphan*/  atr; } ;
struct TYPE_12__ {int /*<<< orphan*/  atr; } ;
struct TYPE_11__ {int /*<<< orphan*/  atr; } ;
struct TYPE_10__ {int /*<<< orphan*/  atr; } ;
struct TYPE_9__ {int /*<<< orphan*/  atr; } ;
struct TYPE_16__ {TYPE_7__ item; TYPE_6__ item_selected; TYPE_5__ tag; TYPE_4__ tag_selected; TYPE_3__ check; TYPE_2__ check_selected; TYPE_1__ menubox; } ;

/* Variables and functions */
 scalar_t__ check_x ; 
 TYPE_8__ dlg ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int item_x ; 
 int list_width ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(WINDOW * win, int choice, int selected)
{
	int i;
	char *list_item = FUNC3(list_width + 1);

	FUNC5(list_item, FUNC2(), list_width - item_x);
	list_item[list_width - item_x] = '\0';

	/* Clear 'residue' of last item */
	FUNC8(win, dlg.menubox.atr);
	FUNC9(win, choice, 0);
	for (i = 0; i < list_width; i++)
		FUNC6(win, ' ');

	FUNC9(win, choice, check_x);
	FUNC8(win, selected ? dlg.check_selected.atr
		 : dlg.check.atr);
	if (!FUNC1(':'))
		FUNC10(win, "(%c)", FUNC1('X') ? 'X' : ' ');

	FUNC8(win, selected ? dlg.tag_selected.atr : dlg.tag.atr);
	FUNC4(win, choice, item_x, list_item[0]);
	FUNC8(win, selected ? dlg.item_selected.atr : dlg.item.atr);
	FUNC7(win, list_item + 1);
	if (selected) {
		FUNC9(win, choice, check_x + 1);
		FUNC11(win);
	}
	FUNC0(list_item);
}