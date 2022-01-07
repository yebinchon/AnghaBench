
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int KXLDSym ;


 scalar_t__ kxld_sym_is_cxx (int const*) ;
 scalar_t__ kxld_sym_is_defined_locally (int const*) ;

__attribute__((used)) static boolean_t
sym_is_defined_cxx(const KXLDSym *sym)
{
    return (kxld_sym_is_defined_locally(sym) && kxld_sym_is_cxx(sym));
}
