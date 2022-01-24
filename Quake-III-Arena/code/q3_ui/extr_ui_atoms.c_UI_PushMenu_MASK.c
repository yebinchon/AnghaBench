#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int cursor_prev; int nitems; scalar_t__* items; scalar_t__ cursor; } ;
typedef  TYPE_1__ menuframework_s ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_2__ menucommon_s ;
struct TYPE_8__ {int menusp; void* firstdraw; TYPE_1__* activemenu; TYPE_1__** stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEYCATCH_UI ; 
 int MAX_MENUDEPTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int QMF_GRAYED ; 
 int QMF_INACTIVE ; 
 int QMF_MOUSEONLY ; 
 void* m_entersound ; 
 void* qtrue ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ uis ; 

void FUNC3( menuframework_s *menu )
{
	int				i;
	menucommon_s*	item;

	// avoid stacking menus invoked by hotkeys
	for (i=0 ; i<uis.menusp ; i++)
	{
		if (uis.stack[i] == menu)
		{
			uis.menusp = i;
			break;
		}
	}

	if (i == uis.menusp)
	{
		if (uis.menusp >= MAX_MENUDEPTH)
			FUNC1("UI_PushMenu: menu stack overflow");

		uis.stack[uis.menusp++] = menu;
	}

	uis.activemenu = menu;

	// default cursor position
	menu->cursor      = 0;
	menu->cursor_prev = 0;

	m_entersound = qtrue;

	FUNC2( KEYCATCH_UI );

	// force first available item to have focus
	for (i=0; i<menu->nitems; i++)
	{
		item = (menucommon_s *)menu->items[i];
		if (!(item->flags & (QMF_GRAYED|QMF_MOUSEONLY|QMF_INACTIVE)))
		{
			menu->cursor_prev = -1;
			FUNC0( menu, i );
			break;
		}
	}

	uis.firstdraw = qtrue;
}