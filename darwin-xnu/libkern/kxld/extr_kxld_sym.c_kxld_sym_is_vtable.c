
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int KXLDSym ;


 int check (int const*) ;
 scalar_t__ kxld_sym_is_class_vtable (int const*) ;
 scalar_t__ kxld_sym_is_metaclass_vtable (int const*) ;

boolean_t
kxld_sym_is_vtable(const KXLDSym *sym)
{
    check(sym);

    return kxld_sym_is_class_vtable(sym) || kxld_sym_is_metaclass_vtable(sym);
}
