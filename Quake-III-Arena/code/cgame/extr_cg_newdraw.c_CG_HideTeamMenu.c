
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Menus_CloseByName (char*) ;

void CG_HideTeamMenu() {
  Menus_CloseByName("teamMenu");
  Menus_CloseByName("getMenu");
}
