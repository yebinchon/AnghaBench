
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int KXLDSym ;


 scalar_t__ kxld_sym_is_common (int const*) ;
 scalar_t__ kxld_sym_is_indirect (int const*) ;
 int kxld_sym_is_replaced (int const*) ;
 scalar_t__ kxld_sym_is_undefined (int const*) ;

boolean_t
kxld_sym_is_unresolved(const KXLDSym *sym)
{
    return ((kxld_sym_is_undefined(sym) && !kxld_sym_is_replaced(sym)) ||
            kxld_sym_is_indirect(sym) || kxld_sym_is_common(sym));
}
