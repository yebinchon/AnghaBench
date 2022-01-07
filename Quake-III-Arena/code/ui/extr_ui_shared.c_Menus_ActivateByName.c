
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; int name; } ;
struct TYPE_9__ {TYPE_1__ window; } ;
typedef TYPE_2__ menuDef_t ;


 int Display_CloseCinematics () ;
 scalar_t__ MAX_OPEN_MENUS ;
 TYPE_2__* Menu_GetFocused () ;
 TYPE_2__* Menus ;
 int Menus_Activate (TYPE_2__*) ;
 scalar_t__ Q_stricmp (int ,char const*) ;
 int WINDOW_HASFOCUS ;
 int menuCount ;
 TYPE_2__** menuStack ;
 scalar_t__ openMenuCount ;

menuDef_t *Menus_ActivateByName(const char *p) {
  int i;
  menuDef_t *m = ((void*)0);
 menuDef_t *focus = Menu_GetFocused();
  for (i = 0; i < menuCount; i++) {
    if (Q_stricmp(Menus[i].window.name, p) == 0) {
     m = &Menus[i];
   Menus_Activate(m);
   if (openMenuCount < MAX_OPEN_MENUS && focus != ((void*)0)) {
    menuStack[openMenuCount++] = focus;
   }
    } else {
      Menus[i].window.flags &= ~WINDOW_HASFOCUS;
    }
  }
 Display_CloseCinematics();
  return m;
}
