
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int menuDef_t ;
struct TYPE_8__ {float x; float y; } ;
struct TYPE_7__ {float x; float y; } ;
struct TYPE_9__ {int flags; int offsetTime; TYPE_2__ rectClient; TYPE_1__ rectEffects; } ;
struct TYPE_10__ {TYPE_3__ window; } ;
typedef TYPE_4__ itemDef_t ;


 int Item_UpdatePosition (TYPE_4__*) ;
 TYPE_4__* Menu_GetMatchingItemByNumber (int *,int,char const*) ;
 int Menu_ItemsMatchingGroup (int *,char const*) ;
 int WINDOW_ORBITING ;
 int WINDOW_VISIBLE ;

void Menu_OrbitItemByName(menuDef_t *menu, const char *p, float x, float y, float cx, float cy, int time) {
  itemDef_t *item;
  int i;
  int count = Menu_ItemsMatchingGroup(menu, p);
  for (i = 0; i < count; i++) {
    item = Menu_GetMatchingItemByNumber(menu, i, p);
    if (item != ((void*)0)) {
      item->window.flags |= (WINDOW_ORBITING | WINDOW_VISIBLE);
      item->window.offsetTime = time;
      item->window.rectEffects.x = cx;
      item->window.rectEffects.y = cy;
      item->window.rectClient.x = x;
      item->window.rectClient.y = y;
      Item_UpdatePosition(item);
    }
  }
}
