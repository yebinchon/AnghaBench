
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
struct nlist_64 {int dummy; } ;
struct nlist {int dummy; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int name; } ;
typedef int KXLDSymtabIterator ;
typedef int KXLDSymtab ;
typedef TYPE_1__ KXLDSym ;


 int FALSE ;
 int check (int const*) ;
 int kxld_sym_is_defined_locally ;
 TYPE_1__* kxld_symtab_iterator_get_next (int *) ;
 int kxld_symtab_iterator_init (int *,int const*,int ,int ) ;
 scalar_t__ strlen (int ) ;

u_long
kxld_symtab_get_macho_data_size(const KXLDSymtab *symtab, boolean_t is_32_bit)
{
    KXLDSymtabIterator iter;
    KXLDSym *sym = ((void*)0);
    u_long size = 1;
    u_int nsyms = 0;

    check(symtab);

    kxld_symtab_iterator_init(&iter, symtab,
        kxld_sym_is_defined_locally, FALSE);

    while ((sym = kxld_symtab_iterator_get_next(&iter))) {
        size += strlen(sym->name) + 1;
        ++nsyms;
    }

    if (is_32_bit) {
        size += nsyms * sizeof(struct nlist);
    } else {
        size += nsyms * sizeof(struct nlist_64);
    }

    size = (size + 7) & ~7;

    return size;
}
