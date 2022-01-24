#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_13__ {int /*<<< orphan*/  atr; } ;
struct TYPE_12__ {int /*<<< orphan*/  atr; } ;
struct TYPE_11__ {int /*<<< orphan*/  atr; } ;
struct TYPE_10__ {int /*<<< orphan*/  atr; } ;
struct TYPE_9__ {int /*<<< orphan*/  atr; } ;
struct TYPE_8__ {int /*<<< orphan*/  atr; } ;
struct TYPE_14__ {TYPE_6__ button_inactive; TYPE_5__ button_active; TYPE_4__ button_label_inactive; TYPE_3__ button_label_active; TYPE_2__ button_key_inactive; TYPE_1__ button_key_active; } ;

/* Variables and functions */
 TYPE_7__ dlg ; 
 int FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

void FUNC5(WINDOW * win, const char *label, int y, int x, int selected)
{
	int i, temp;

	FUNC4(win, y, x);
	FUNC3(win, selected ? dlg.button_active.atr
		 : dlg.button_inactive.atr);
	FUNC2(win, "<");
	temp = FUNC0(label, " ");
	label += temp;
	FUNC3(win, selected ? dlg.button_label_active.atr
		 : dlg.button_label_inactive.atr);
	for (i = 0; i < temp; i++)
		FUNC1(win, ' ');
	FUNC3(win, selected ? dlg.button_key_active.atr
		 : dlg.button_key_inactive.atr);
	FUNC1(win, label[0]);
	FUNC3(win, selected ? dlg.button_label_active.atr
		 : dlg.button_label_inactive.atr);
	FUNC2(win, (char *)label + 1);
	FUNC3(win, selected ? dlg.button_active.atr
		 : dlg.button_inactive.atr);
	FUNC2(win, ">");
	FUNC4(win, y, x + temp + 1);
}