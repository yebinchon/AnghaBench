
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cursorPos; scalar_t__ endPos; scalar_t__ startPos; } ;
typedef TYPE_1__ listBoxDef_t ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ cursorPos; scalar_t__ typeData; } ;
typedef TYPE_2__ itemDef_t ;


 scalar_t__ ITEM_TYPE_LISTBOX ;

void Item_InitControls(itemDef_t *item) {
 if (item == ((void*)0)) {
  return;
 }
 if (item->type == ITEM_TYPE_LISTBOX) {
  listBoxDef_t *listPtr = (listBoxDef_t*)item->typeData;
  item->cursorPos = 0;
  if (listPtr) {
   listPtr->cursorPos = 0;
   listPtr->startPos = 0;
   listPtr->endPos = 0;
   listPtr->cursorPos = 0;
  }
 }
}
