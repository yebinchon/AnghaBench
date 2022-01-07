
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ window; } ;
typedef TYPE_2__ menuDef_t ;


 TYPE_2__* Menus ;
 scalar_t__ Q_stricmp (int ,char const*) ;
 int menuCount ;

menuDef_t *Menus_FindByName(const char *p) {
  int i;
  for (i = 0; i < menuCount; i++) {
    if (Q_stricmp(Menus[i].window.name, p) == 0) {
      return &Menus[i];
    }
  }
  return ((void*)0);
}
