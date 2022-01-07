
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int KXLDSym ;


 int check (int const*) ;
 scalar_t__ kxld_sym_is_defined_locally (int const*) ;
 scalar_t__ kxld_sym_is_external (int const*) ;

boolean_t
kxld_sym_is_exported(const KXLDSym *sym)
{
    check(sym);

    return (kxld_sym_is_defined_locally(sym) && kxld_sym_is_external(sym));
}
