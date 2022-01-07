
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menuDef_t ;


 size_t MAX_MENUS ;
 int Menu_Init (int *) ;
 scalar_t__ Menu_Parse (int,int *) ;
 int Menu_PostParse (int *) ;
 int * Menus ;
 size_t menuCount ;

void Menu_New(int handle) {
 menuDef_t *menu = &Menus[menuCount];

 if (menuCount < MAX_MENUS) {
  Menu_Init(menu);
  if (Menu_Parse(handle, menu)) {
   Menu_PostParse(menu);
   menuCount++;
  }
 }
}
