
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_5__ {int is_resolved; } ;
typedef TYPE_1__ KXLDSym ;


 int check (TYPE_1__ const*) ;
 scalar_t__ kxld_sym_is_defined (TYPE_1__ const*) ;

boolean_t
kxld_sym_is_defined_locally(const KXLDSym *sym)
{
    check(sym);

    return (kxld_sym_is_defined(sym) && !sym->is_resolved);
}
