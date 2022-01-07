
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef int kxld_addr_t ;
struct TYPE_8__ {int target_type; int address; int target; } ;
struct TYPE_7__ {int symtab; } ;
typedef int KXLDSym ;
typedef TYPE_1__ KXLDRelocator ;
typedef TYPE_2__ KXLDReloc ;




 int check (TYPE_2__ const*) ;
 int kxld_relocator_get_pointer_at_addr (TYPE_1__ const*,int const*,int ) ;
 int * kxld_symtab_get_cxx_symbol_by_value (int ,int ) ;
 int * kxld_symtab_get_symbol_by_index (int ,int ) ;

KXLDSym *
kxld_reloc_get_symbol(const KXLDRelocator *relocator, const KXLDReloc *reloc,
    const u_char *data)
{
    KXLDSym *sym = ((void*)0);
    kxld_addr_t value = 0;

    check(reloc);

    switch (reloc->target_type) {
    case 128:
        sym = kxld_symtab_get_symbol_by_index(relocator->symtab, reloc->target);
        break;
    case 129:
       if (data) {
            value = kxld_relocator_get_pointer_at_addr(relocator, data,
                                                       reloc->address);
            sym = kxld_symtab_get_cxx_symbol_by_value(relocator->symtab, value);
       }
        break;
    default:
        sym = ((void*)0);
        break;
    }

    return sym;
}
