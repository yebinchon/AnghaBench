
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sym ;


 int current_package ;
 int * get_package_sym (int ,char const*) ;
 int * sym_get_local (char const*) ;

Sym *sym_get(const char *name) {
    Sym *sym = sym_get_local(name);
    return sym ? sym : get_package_sym(current_package, name);
}
