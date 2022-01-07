
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* name; int home_package; int * decl; int kind; } ;
typedef int SymKind ;
typedef TYPE_1__ Sym ;
typedef int Decl ;


 int current_package ;
 int set_resolved_sym (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* xcalloc (int,int) ;

Sym *sym_new(SymKind kind, const char *name, Decl *decl) {
    Sym *sym = xcalloc(1, sizeof(Sym));
    sym->kind = kind;
    sym->name = name;
    sym->decl = decl;
    sym->home_package = current_package;
    set_resolved_sym(sym, sym);
    return sym;
}
