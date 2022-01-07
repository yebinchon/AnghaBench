
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inGameLoad; } ;


 char* UI_Cvar_VariableString (char*) ;
 int UI_LoadMenus (char const*,int ) ;
 int qfalse ;
 TYPE_1__ uiInfo ;

void UI_LoadNonIngame() {
 const char *menuSet = UI_Cvar_VariableString("ui_menuFiles");
 if (menuSet == ((void*)0) || menuSet[0] == '\0') {
  menuSet = "ui/menus.txt";
 }
 UI_LoadMenus(menuSet, qfalse);
 uiInfo.inGameLoad = qfalse;
}
