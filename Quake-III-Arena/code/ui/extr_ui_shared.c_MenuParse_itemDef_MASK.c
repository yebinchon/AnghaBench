#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_6__ {size_t itemCount; TYPE_2__** items; } ;
typedef  TYPE_1__ menuDef_t ;
typedef  int /*<<< orphan*/  itemDef_t ;
struct TYPE_7__ {TYPE_1__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*) ; 
 size_t MAX_MENUITEMS ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC4( itemDef_t *item, int handle ) {
	menuDef_t *menu = (menuDef_t*)item;
	if (menu->itemCount < MAX_MENUITEMS) {
		menu->items[menu->itemCount] = FUNC3(sizeof(itemDef_t));
		FUNC0(menu->items[menu->itemCount]);
		if (!FUNC2(handle, menu->items[menu->itemCount])) {
			return qfalse;
		}
		FUNC1(menu->items[menu->itemCount]);
		menu->items[menu->itemCount++]->parent = menu;
	}
	return qtrue;
}