
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_7__ {int flags; int rect; } ;
struct TYPE_9__ {int itemCount; TYPE_4__** items; TYPE_1__ window; } ;
typedef TYPE_3__ menuDef_t ;
struct TYPE_8__ {int flags; int rect; } ;
struct TYPE_10__ {scalar_t__ type; scalar_t__ text; TYPE_2__ window; } ;
typedef TYPE_4__ itemDef_t ;


 scalar_t__ ITEM_TYPE_TEXT ;
 int * Item_CorrectedTextRect (TYPE_4__*) ;
 scalar_t__ Rect_ContainsPoint (int *,float,float) ;
 int WINDOW_DECORATION ;
 int WINDOW_FORCED ;
 int WINDOW_VISIBLE ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean Menu_OverActiveItem(menuDef_t *menu, float x, float y) {
  if (menu && menu->window.flags & (WINDOW_VISIBLE | WINDOW_FORCED)) {
  if (Rect_ContainsPoint(&menu->window.rect, x, y)) {
   int i;
   for (i = 0; i < menu->itemCount; i++) {



    if (!(menu->items[i]->window.flags & (WINDOW_VISIBLE | WINDOW_FORCED))) {
     continue;
    }

    if (menu->items[i]->window.flags & WINDOW_DECORATION) {
     continue;
    }

    if (Rect_ContainsPoint(&menu->items[i]->window.rect, x, y)) {
     itemDef_t *overItem = menu->items[i];
     if (overItem->type == ITEM_TYPE_TEXT && overItem->text) {
      if (Rect_ContainsPoint(Item_CorrectedTextRect(overItem), x, y)) {
       return qtrue;
      } else {
       continue;
      }
     } else {
      return qtrue;
     }
    }
   }

  }
 }
 return qfalse;
}
