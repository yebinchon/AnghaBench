
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sym ;


 int resolve_sym (int *) ;
 int * sym_get (char const*) ;

Sym *resolve_name(const char *name) {
    Sym *sym = sym_get(name);
    if (!sym) {
        return ((void*)0);
    }
    resolve_sym(sym);
    return sym;
}
