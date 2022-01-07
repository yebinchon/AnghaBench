
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tristate ;
struct symbol {int dummy; } ;
struct menu {struct symbol* sym; } ;
typedef scalar_t__ gint ;


 scalar_t__ COL_MOD ;
 scalar_t__ COL_NO ;
 scalar_t__ COL_YES ;
 int FULL_VIEW ;
 int SINGLE_VIEW ;
 int SPLIT_VIEW ;





 int * browsed ;
 int display_list () ;
 int display_tree_part () ;
 int mod ;
 int no ;
 int rootmenu ;
 int sym_get_type (struct symbol*) ;
 int sym_set_tristate_value (struct symbol*,int ) ;
 int sym_tristate_within_range (struct symbol*,int ) ;
 int update_tree (int *,int *) ;
 int view_mode ;
 int yes ;

__attribute__((used)) static void change_sym_value(struct menu *menu, gint col)
{
 struct symbol *sym = menu->sym;
 tristate newval;

 if (!sym)
  return;

 if (col == COL_NO)
  newval = no;
 else if (col == COL_MOD)
  newval = mod;
 else if (col == COL_YES)
  newval = yes;
 else
  return;

 switch (sym_get_type(sym)) {
 case 132:
 case 128:
  if (!sym_tristate_within_range(sym, newval))
   newval = yes;
  sym_set_tristate_value(sym, newval);
  if (view_mode == FULL_VIEW)
   update_tree(&rootmenu, ((void*)0));
  else if (view_mode == SPLIT_VIEW) {
   update_tree(browsed, ((void*)0));
   display_list();
  }
  else if (view_mode == SINGLE_VIEW)
   display_tree_part();
  break;
 case 130:
 case 131:
 case 129:
 default:
  break;
 }
}
