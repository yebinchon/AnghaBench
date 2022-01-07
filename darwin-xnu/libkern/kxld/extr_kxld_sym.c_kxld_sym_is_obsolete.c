
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ is_obsolete; } ;
typedef TYPE_1__ KXLDSym ;



boolean_t
kxld_sym_is_obsolete(const KXLDSym *sym)
{
    return (0 != sym->is_obsolete);
}
