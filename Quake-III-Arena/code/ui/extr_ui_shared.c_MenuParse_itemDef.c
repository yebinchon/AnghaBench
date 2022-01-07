
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {size_t itemCount; TYPE_2__** items; } ;
typedef TYPE_1__ menuDef_t ;
typedef int itemDef_t ;
struct TYPE_7__ {TYPE_1__* parent; } ;


 int Item_Init (TYPE_2__*) ;
 int Item_InitControls (TYPE_2__*) ;
 int Item_Parse (int,TYPE_2__*) ;
 size_t MAX_MENUITEMS ;
 TYPE_2__* UI_Alloc (int) ;
 int qfalse ;
 int qtrue ;

qboolean MenuParse_itemDef( itemDef_t *item, int handle ) {
 menuDef_t *menu = (menuDef_t*)item;
 if (menu->itemCount < MAX_MENUITEMS) {
  menu->items[menu->itemCount] = UI_Alloc(sizeof(itemDef_t));
  Item_Init(menu->items[menu->itemCount]);
  if (!Item_Parse(handle, menu->items[menu->itemCount])) {
   return qfalse;
  }
  Item_InitControls(menu->items[menu->itemCount]);
  menu->items[menu->itemCount++]->parent = menu;
 }
 return qtrue;
}
