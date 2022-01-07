
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int KXLDSym ;


 int check (int const*) ;
 scalar_t__ kxld_sym_is_absolute (int const*) ;
 int kxld_sym_is_replaced (int const*) ;
 scalar_t__ kxld_sym_is_section (int const*) ;

boolean_t
kxld_sym_is_defined(const KXLDSym *sym)
{
    check(sym);

    return ((kxld_sym_is_absolute(sym) || kxld_sym_is_section(sym)) &&
        !kxld_sym_is_replaced(sym));
}
