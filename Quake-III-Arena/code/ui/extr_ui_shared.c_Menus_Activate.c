
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {scalar_t__* soundName; scalar_t__ onOpen; TYPE_1__ window; } ;
typedef TYPE_2__ menuDef_t ;
struct TYPE_9__ {TYPE_2__* parent; } ;
typedef TYPE_3__ itemDef_t ;
struct TYPE_10__ {int (* startBackgroundTrack ) (scalar_t__*,scalar_t__*) ;} ;


 TYPE_6__* DC ;
 int Display_CloseCinematics () ;
 int Item_RunScript (TYPE_3__*,scalar_t__) ;
 int WINDOW_HASFOCUS ;
 int WINDOW_VISIBLE ;
 int stub1 (scalar_t__*,scalar_t__*) ;

void Menus_Activate(menuDef_t *menu) {
 menu->window.flags |= (WINDOW_HASFOCUS | WINDOW_VISIBLE);
 if (menu->onOpen) {
  itemDef_t item;
  item.parent = menu;
  Item_RunScript(&item, menu->onOpen);
 }

 if (menu->soundName && *menu->soundName) {

  DC->startBackgroundTrack(menu->soundName, menu->soundName);
 }

 Display_CloseCinematics();

}
