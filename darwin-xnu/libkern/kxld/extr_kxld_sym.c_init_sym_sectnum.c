
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_4__ {int is_absolute; scalar_t__ is_section; scalar_t__ sectnum; } ;
typedef TYPE_1__ KXLDSym ;


 scalar_t__ kxld_sym_is_section (TYPE_1__*) ;

__attribute__((used)) static void
init_sym_sectnum(KXLDSym *sym, u_int n_sect)
{






    if (kxld_sym_is_section(sym)) {
        if (n_sect) {

            sym->sectnum = n_sect - 1;
        } else {
            sym->is_absolute = 1;
            sym->is_section = 0;
        }
    }

}
