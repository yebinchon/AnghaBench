
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ is_replaced; } ;
typedef TYPE_1__ KXLDSym ;


 int check (TYPE_1__ const*) ;

boolean_t
kxld_sym_is_replaced(const KXLDSym *sym)
{
    check(sym);

    return (0 != sym->is_replaced);
}
