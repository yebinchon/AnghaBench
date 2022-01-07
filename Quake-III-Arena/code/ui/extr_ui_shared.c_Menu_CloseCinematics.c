
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ownerDraw; } ;
struct TYPE_7__ {int itemCount; TYPE_1__** items; TYPE_3__ window; } ;
typedef TYPE_2__ menuDef_t ;
struct TYPE_9__ {int (* stopCinematic ) (scalar_t__) ;} ;
struct TYPE_6__ {scalar_t__ type; TYPE_3__ window; } ;


 TYPE_5__* DC ;
 scalar_t__ ITEM_TYPE_OWNERDRAW ;
 int Window_CloseCinematic (TYPE_3__*) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void Menu_CloseCinematics(menuDef_t *menu) {
 if (menu) {
  int i;
  Window_CloseCinematic(&menu->window);
   for (i = 0; i < menu->itemCount; i++) {
    Window_CloseCinematic(&menu->items[i]->window);
   if (menu->items[i]->type == ITEM_TYPE_OWNERDRAW) {
    DC->stopCinematic(0-menu->items[i]->window.ownerDraw);
   }
   }
 }
}
