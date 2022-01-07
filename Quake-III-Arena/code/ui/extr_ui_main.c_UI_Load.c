
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; } ;
struct TYPE_5__ {TYPE_1__ window; } ;
typedef TYPE_2__ menuDef_t ;


 TYPE_2__* Menu_GetFocused () ;
 int Menus_ActivateByName (char*) ;
 int Menus_CloseAll () ;
 int String_Init () ;
 char* UI_Cvar_VariableString (char*) ;
 int UI_LoadArenas () ;
 int UI_LoadMenus (char*,int ) ;
 int UI_ParseGameInfo (char*) ;
 int qtrue ;
 int strcpy (char*,scalar_t__) ;

void UI_Load() {
 char lastName[1024];
  menuDef_t *menu = Menu_GetFocused();
 char *menuSet = UI_Cvar_VariableString("ui_menuFiles");
 if (menu && menu->window.name) {
  strcpy(lastName, menu->window.name);
 }
 if (menuSet == ((void*)0) || menuSet[0] == '\0') {
  menuSet = "ui/menus.txt";
 }

 String_Init();




 UI_ParseGameInfo("gameinfo.txt");
 UI_LoadArenas();


 UI_LoadMenus(menuSet, qtrue);
 Menus_CloseAll();
 Menus_ActivateByName(lastName);

}
