
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_12__ {int cursorItem; int itemCount; TYPE_4__** items; } ;
typedef TYPE_3__ menuDef_t ;
struct TYPE_10__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_11__ {TYPE_1__ rect; } ;
struct TYPE_13__ {TYPE_2__ window; } ;
typedef TYPE_4__ itemDef_t ;
struct TYPE_14__ {int cursory; int cursorx; } ;


 TYPE_9__* DC ;
 scalar_t__ Item_SetFocus (TYPE_4__*,int ,int ) ;
 int Menu_HandleMouseMove (TYPE_3__*,scalar_t__,scalar_t__) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

itemDef_t *Menu_SetNextCursorItem(menuDef_t *menu) {

  qboolean wrapped = qfalse;
 int oldCursor = menu->cursorItem;


  if (menu->cursorItem == -1) {
    menu->cursorItem = 0;
    wrapped = qtrue;
  }

  while (menu->cursorItem < menu->itemCount) {

    menu->cursorItem++;
    if (menu->cursorItem >= menu->itemCount && !wrapped) {
      wrapped = qtrue;
      menu->cursorItem = 0;
    }
  if (Item_SetFocus(menu->items[menu->cursorItem], DC->cursorx, DC->cursory)) {
   Menu_HandleMouseMove(menu, menu->items[menu->cursorItem]->window.rect.x + 1, menu->items[menu->cursorItem]->window.rect.y + 1);
      return menu->items[menu->cursorItem];
    }

  }

 menu->cursorItem = oldCursor;
 return ((void*)0);
}
