
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int itemCount; TYPE_2__** items; } ;
typedef TYPE_3__ menuDef_t ;
struct TYPE_5__ {scalar_t__ group; scalar_t__ name; } ;
struct TYPE_6__ {TYPE_1__ window; } ;


 scalar_t__ Q_stricmp (scalar_t__,char const*) ;

int Menu_ItemsMatchingGroup(menuDef_t *menu, const char *name) {
  int i;
  int count = 0;
  for (i = 0; i < menu->itemCount; i++) {
    if (Q_stricmp(menu->items[i]->window.name, name) == 0 || (menu->items[i]->window.group && Q_stricmp(menu->items[i]->window.group, name) == 0)) {
      count++;
    }
  }
  return count;
}
