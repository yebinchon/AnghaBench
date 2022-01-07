
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name_index_initialized; scalar_t__ cxx_index_initialized; scalar_t__ strsize; int * strings; int name_index; int cxx_index; int syms; } ;
typedef TYPE_1__ KXLDSymtab ;


 int check (TYPE_1__*) ;
 int kxld_array_clear (int *) ;
 int kxld_dict_clear (int *) ;

void
kxld_symtab_clear(KXLDSymtab *symtab)
{
    check(symtab);

    kxld_array_clear(&symtab->syms);
    kxld_dict_clear(&symtab->cxx_index);
    kxld_dict_clear(&symtab->name_index);
    symtab->strings = ((void*)0);
    symtab->strsize = 0;
    symtab->cxx_index_initialized = 0;
    symtab->name_index_initialized = 0;
}
