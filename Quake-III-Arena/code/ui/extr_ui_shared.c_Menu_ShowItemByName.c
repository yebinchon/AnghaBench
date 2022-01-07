
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int menuDef_t ;
struct TYPE_5__ {int cinematic; int flags; } ;
struct TYPE_6__ {TYPE_1__ window; } ;
typedef TYPE_2__ itemDef_t ;
struct TYPE_7__ {int (* stopCinematic ) (int) ;} ;


 TYPE_4__* DC ;
 TYPE_2__* Menu_GetMatchingItemByNumber (int *,int,char const*) ;
 int Menu_ItemsMatchingGroup (int *,char const*) ;
 int WINDOW_VISIBLE ;
 int stub1 (int) ;

void Menu_ShowItemByName(menuDef_t *menu, const char *p, qboolean bShow) {
 itemDef_t *item;
 int i;
 int count = Menu_ItemsMatchingGroup(menu, p);
 for (i = 0; i < count; i++) {
  item = Menu_GetMatchingItemByNumber(menu, i, p);
  if (item != ((void*)0)) {
   if (bShow) {
    item->window.flags |= WINDOW_VISIBLE;
   } else {
    item->window.flags &= ~WINDOW_VISIBLE;

    if (item->window.cinematic >= 0) {
     DC->stopCinematic(item->window.cinematic);
     item->window.cinematic = -1;
    }
   }
  }
 }
}
