
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct property {int expr; } ;


 int P_DEFAULT ;
 int SYMBOL_CONST ;
 int expr_alloc_symbol (int ) ;
 struct property* prop_alloc (int ,struct symbol*) ;
 int sym_lookup (char const*,int ) ;

__attribute__((used)) static void sym_add_default(struct symbol *sym, const char *def)
{
 struct property *prop = prop_alloc(P_DEFAULT, sym);

 prop->expr = expr_alloc_symbol(sym_lookup(def, SYMBOL_CONST));
}
