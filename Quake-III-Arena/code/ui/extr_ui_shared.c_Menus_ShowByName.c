
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menuDef_t ;


 int Menus_Activate (int *) ;
 int * Menus_FindByName (char const*) ;

void Menus_ShowByName(const char *p) {
 menuDef_t *menu = Menus_FindByName(p);
 if (menu) {
  Menus_Activate(menu);
 }
}
