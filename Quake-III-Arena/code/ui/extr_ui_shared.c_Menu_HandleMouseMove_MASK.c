#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_12__ {int flags; } ;
struct TYPE_14__ {int itemCount; TYPE_4__** items; TYPE_1__ window; } ;
typedef  TYPE_3__ menuDef_t ;
struct TYPE_13__ {int flags; int /*<<< orphan*/  rect; } ;
struct TYPE_15__ {int cvarFlags; scalar_t__ type; TYPE_2__ window; scalar_t__ text; } ;
typedef  TYPE_4__ itemDef_t ;

/* Variables and functions */
 int CVAR_DISABLE ; 
 int CVAR_ENABLE ; 
 int CVAR_HIDE ; 
 int CVAR_SHOW ; 
 scalar_t__ ITEM_TYPE_TEXT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,float,float) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,float,float) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,float,float) ; 
 int WINDOW_FORCED ; 
 int WINDOW_MOUSEOVER ; 
 int WINDOW_VISIBLE ; 
 scalar_t__ g_editingField ; 
 scalar_t__ g_waitingForKey ; 
 scalar_t__ itemCapture ; 
 scalar_t__ qfalse ; 

void FUNC8(menuDef_t *menu, float x, float y) {
  int i, pass;
  qboolean focusSet = qfalse;

  itemDef_t *overItem;
  if (menu == NULL) {
    return;
  }

  if (!(menu->window.flags & (WINDOW_VISIBLE | WINDOW_FORCED))) {
    return;
  }

	if (itemCapture) {
		//Item_MouseMove(itemCapture, x, y);
		return;
	}

	if (g_waitingForKey || g_editingField) {
		return;
	}

  // FIXME: this is the whole issue of focus vs. mouse over.. 
  // need a better overall solution as i don't like going through everything twice
  for (pass = 0; pass < 2; pass++) {
    for (i = 0; i < menu->itemCount; i++) {
      // turn off focus each item
      // menu->items[i].window.flags &= ~WINDOW_HASFOCUS;

      if (!(menu->items[i]->window.flags & (WINDOW_VISIBLE | WINDOW_FORCED))) {
        continue;
      }

			// items can be enabled and disabled based on cvars
			if (menu->items[i]->cvarFlags & (CVAR_ENABLE | CVAR_DISABLE) && !FUNC2(menu->items[i], CVAR_ENABLE)) {
				continue;
			}

			if (menu->items[i]->cvarFlags & (CVAR_SHOW | CVAR_HIDE) && !FUNC2(menu->items[i], CVAR_SHOW)) {
				continue;
			}



      if (FUNC7(&menu->items[i]->window.rect, x, y)) {
				if (pass == 1) {
					overItem = menu->items[i];
					if (overItem->type == ITEM_TYPE_TEXT && overItem->text) {
						if (!FUNC7(FUNC1(overItem), x, y)) {
							continue;
						}
					}
					// if we are over an item
					if (FUNC0(overItem->window.flags)) {
						// different one
						FUNC3(overItem, x, y);
						// Item_SetMouseOver(overItem, qtrue);

						// if item is not a decoration see if it can take focus
						if (!focusSet) {
							focusSet = FUNC5(overItem, x, y);
						}
					}
				}
      } else if (menu->items[i]->window.flags & WINDOW_MOUSEOVER) {
          FUNC4(menu->items[i]);
          FUNC6(menu->items[i], qfalse);
      }
    }
  }

}