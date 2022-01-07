
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_12__ {int flags; } ;
struct TYPE_14__ {int itemCount; TYPE_4__** items; TYPE_1__ window; } ;
typedef TYPE_3__ menuDef_t ;
struct TYPE_13__ {int flags; int rect; } ;
struct TYPE_15__ {int cvarFlags; scalar_t__ type; TYPE_2__ window; scalar_t__ text; } ;
typedef TYPE_4__ itemDef_t ;


 int CVAR_DISABLE ;
 int CVAR_ENABLE ;
 int CVAR_HIDE ;
 int CVAR_SHOW ;
 scalar_t__ ITEM_TYPE_TEXT ;
 scalar_t__ IsVisible (int) ;
 int * Item_CorrectedTextRect (TYPE_4__*) ;
 int Item_EnableShowViaCvar (TYPE_4__*,int) ;
 int Item_MouseEnter (TYPE_4__*,float,float) ;
 int Item_MouseLeave (TYPE_4__*) ;
 scalar_t__ Item_SetFocus (TYPE_4__*,float,float) ;
 int Item_SetMouseOver (TYPE_4__*,scalar_t__) ;
 scalar_t__ Rect_ContainsPoint (int *,float,float) ;
 int WINDOW_FORCED ;
 int WINDOW_MOUSEOVER ;
 int WINDOW_VISIBLE ;
 scalar_t__ g_editingField ;
 scalar_t__ g_waitingForKey ;
 scalar_t__ itemCapture ;
 scalar_t__ qfalse ;

void Menu_HandleMouseMove(menuDef_t *menu, float x, float y) {
  int i, pass;
  qboolean focusSet = qfalse;

  itemDef_t *overItem;
  if (menu == ((void*)0)) {
    return;
  }

  if (!(menu->window.flags & (WINDOW_VISIBLE | WINDOW_FORCED))) {
    return;
  }

 if (itemCapture) {

  return;
 }

 if (g_waitingForKey || g_editingField) {
  return;
 }



  for (pass = 0; pass < 2; pass++) {
    for (i = 0; i < menu->itemCount; i++) {



      if (!(menu->items[i]->window.flags & (WINDOW_VISIBLE | WINDOW_FORCED))) {
        continue;
      }


   if (menu->items[i]->cvarFlags & (CVAR_ENABLE | CVAR_DISABLE) && !Item_EnableShowViaCvar(menu->items[i], CVAR_ENABLE)) {
    continue;
   }

   if (menu->items[i]->cvarFlags & (CVAR_SHOW | CVAR_HIDE) && !Item_EnableShowViaCvar(menu->items[i], CVAR_SHOW)) {
    continue;
   }



      if (Rect_ContainsPoint(&menu->items[i]->window.rect, x, y)) {
    if (pass == 1) {
     overItem = menu->items[i];
     if (overItem->type == ITEM_TYPE_TEXT && overItem->text) {
      if (!Rect_ContainsPoint(Item_CorrectedTextRect(overItem), x, y)) {
       continue;
      }
     }

     if (IsVisible(overItem->window.flags)) {

      Item_MouseEnter(overItem, x, y);



      if (!focusSet) {
       focusSet = Item_SetFocus(overItem, x, y);
      }
     }
    }
      } else if (menu->items[i]->window.flags & WINDOW_MOUSEOVER) {
          Item_MouseLeave(menu->items[i]);
          Item_SetMouseOver(menu->items[i], qfalse);
      }
    }
  }

}
