
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tristate ;
struct symbol {int dummy; } ;




 int sym_get_tristate_value (struct symbol*) ;
 scalar_t__ sym_set_tristate_value (struct symbol*,int) ;


tristate sym_toggle_tristate_value(struct symbol *sym)
{
 tristate oldval, newval;

 oldval = newval = sym_get_tristate_value(sym);
 do {
  switch (newval) {
  case 129:
   newval = 130;
   break;
  case 130:
   newval = 128;
   break;
  case 128:
   newval = 129;
   break;
  }
  if (sym_set_tristate_value(sym, newval))
   break;
 } while (oldval != newval);
 return newval;
}
