
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct menu {TYPE_1__* prompt; struct menu* parent; } ;
typedef enum prop_type { ____Placeholder_prop_type } prop_type ;
struct TYPE_2__ {int type; } ;


 int P_MENU ;
 struct menu rootmenu ;

struct menu *menu_get_parent_menu(struct menu *menu)
{
 enum prop_type type;

 for (; menu != &rootmenu; menu = menu->parent) {
  type = menu->prompt ? menu->prompt->type : 0;
  if (type == P_MENU)
   break;
 }
 return menu;
}
